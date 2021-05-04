INSERT INTO Device(name,port,baudrate,timeout) VALUES('Wattmeter','COM4',2400,1);
INSERT INTO Device(name,port,baudrate,timeout) VALUES('Chroma','COM6',115200,1);
INSERT INTO Device(name,port,baudrate,timeout) VALUES('uc_icts','COM2',115200,1);
INSERT INTO Device(name,port,baudrate,timeout) VALUES('Hdmidev','COM8',9600,1);
INSERT INTO Device(name,port,baudrate,timeout) VALUES('Rfid','COM9',9600,1);

-- INSERT INTO Threshold(threshold) VALUES('[0]');

INSERT INTO WizardForThreshold(threshold, current, gamma, exposure, id_model) VALUES('[0]', 'yes', 1, 5000, 0);

INSERT INTO Camera(status, name, r_value, g_value, b_value, gamma, exposure) VALUES('acA1300-200uc', 'no camera', 1.80, 1.0, 1.26, 1.23, 7000);

INSERT INTO PanelTestCameras(name, side, standard_exposure, standard_gamma, mura_black_exposure, mura_black_gamma) VALUES ('acA3800-14um', '', 1000, 1.0, 1000,  1);

INSERT INTO Resolution(id, resolution, frequency)  VALUES (143, '1920x1080' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (239, '1600x900' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (108, '1400x900' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (250, '1600x900' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (14, '1024x768' , 60.0);

INSERT INTO Station(name, ip)  VALUES ('EMPTY NAME', '0.0.0.0');

INSERT INTO Test(name, type) VALUES('Power Test', 1);
INSERT INTO Test(name, type) VALUES ('StandBy Test', 2);
INSERT INTO Test(name, type) VALUES ('Edid Test', 3);
INSERT INTO Test(name, type) VALUES ('GrayLevel Test', 4);
INSERT INTO Test(name, type) VALUES ('Service Tag Test', 5);
INSERT INTO Test(name, type) VALUES ('Hdmi Test', 6);
INSERT INTO Test(name, type) VALUES ('Panel Test', 7);
INSERT INTO Test(name, type) VALUES ('Send Command', 8);
INSERT INTO Test(name, type) VALUES ('UPanel Test', 9);



insert into Parameter(name, type) values ('pattern', 1);
insert into Parameter(name, type) values ('power', 2);
insert into Parameter(name, type) values ('delay', 2);
insert into Parameter(name, type) values ('lower_power', 2);
insert into Parameter(name, type) values ('sampling', 1);   -- #5
-- insert into Parameter(name, type) values ('file_name', 3);

--EDID PARAMS
insert into Parameter(name, type) values ('header', 1);
insert into Parameter(name, type) values ('id manufacturer name' , 1);
insert into Parameter(name, type) values ('id product code' , 1);
insert into Parameter(name, type) values ('id serial number' , 1);
insert into Parameter(name, type) values ('week of manufacture' , 1);   -- #10
insert into Parameter(name, type) values ('year of manufacture' , 1);
insert into Parameter(name, type) values ('edid structure version' , 1);
insert into Parameter(name, type) values ('edid structure revision' , 1);
insert into Parameter(name, type) values ('video input definition' , 1);
insert into Parameter(name, type) values ('max. horizontal image size' , 1);    -- #15
insert into Parameter(name, type) values ('max. vertical image size' , 1);
insert into Parameter(name, type) values ('display transfer characteristic (gamma)' , 1);
insert into Parameter(name, type) values ('feature support' , 1);
insert into Parameter(name, type) values ('red/green low bits' , 1);
insert into Parameter(name, type) values ('blue/white low bits' , 1);   -- #20
insert into Parameter(name, type) values ('red x', 1);
insert into Parameter(name, type) values ('red y', 1);
insert into Parameter(name, type) values ('green x', 1);
insert into Parameter(name, type) values ('green y', 1);
insert into Parameter(name, type) values ('blue x', 1);     -- #25
insert into Parameter(name, type) values ('blue y', 1);
insert into Parameter(name, type) values ('white x', 1);
insert into Parameter(name, type) values ('white y', 1);
insert into Parameter(name, type) values ('established timings 1' , 1);
insert into Parameter(name, type) values ('established timings 2' , 1);     -- #30
insert into Parameter(name, type) values ('manufactures reserved timings' , 1);
insert into Parameter(name, type) values ('standard timing identification #1' , 1);
insert into Parameter(name, type) values ('standard timing identification #2' , 1);
insert into Parameter(name, type) values ('standard timing identification #3' , 1);
insert into Parameter(name, type) values ('standard timing identification #4' , 1);     -- #35
insert into Parameter(name, type) values ('standard timing identification #5' , 1);
insert into Parameter(name, type) values ('standard timing identification #6' , 1);
insert into Parameter(name, type) values ('standard timing identification #7' , 1);
insert into Parameter(name, type) values ('standard timing identification #8' , 1);
insert into Parameter(name, type) values ('detailed timing description #1', 1);     -- #40
insert into Parameter(name, type) values ('detailed timing description #2', 1);
insert into Parameter(name, type) values ('detailed timing description #3', 1);
insert into Parameter(name, type) values ('detailed timing description #4', 1);
insert into Parameter(name, type) values ('extension flag' , 1);
insert into Parameter(name, type) values ('checksum', 1);   -- #45

insert into Parameter(name, type) values ('sdb_timing', 1);
insert into Parameter(name, type) values ('filename', 3);

insert into Parameter(name, type) values ('white_pattern_old', 1);
insert into Parameter(name, type) values ('bars', 1);
insert into Parameter(name, type) values ('gray_pattern', 1);   -- #50
insert into Parameter(name, type) values ('chroma_delay', 2);
insert into Parameter(name, type) values ('limit_x_min', 2);
insert into Parameter(name, type) values ('limit_x_max', 2);
insert into Parameter(name, type) values ('limit_y_min', 2);
insert into Parameter(name, type) values ('limit_y_max', 2);    -- #55

insert into Parameter(name, type) values ('timing', 1);

insert into Parameter(name, type) values ('source', 3);

insert into Parameter(name, type) values ('crop_pattern', 1);
insert into Parameter(name, type) values ('delay_crop_pattern', 2);
insert into Parameter(name, type) values ('hdmi_pattern', 1);	-- #60

insert into Parameter(name, type) values ('command', 3);

insert into Parameter(name, type) values ('white_pattern', 1);
insert into Parameter(name, type) values ('black_pattern', 1);


insert into Parameter(name, type) values ('inches', 2);
insert into Parameter(name, type) values ('dead_pixels_number', 1); -- #65
insert into Parameter(name, type) values ('pixels_distance_mm', 2);
insert into Parameter(name, type) values ('width_resolution', 2);
insert into Parameter(name, type) values ('height_resolution', 2);	

insert into Parameter(name, type) values ('width_monitor_mm', 2);	
insert into Parameter(name, type) values ('height_monitor_mm', 2); -- #70


insert into TestParameter(id_test, id_param) values (1,1);
insert into TestParameter(id_test, id_param) values (1,2);
insert into TestParameter(id_test, id_param) values (1,3);
insert into TestParameter(id_test, id_param) values (1,4);
insert into TestParameter(id_test, id_param) values (1,5);


insert into TestParameter(id_test, id_param) values (2,46);
insert into TestParameter(id_test, id_param) values (2,2);
insert into TestParameter(id_test, id_param) values (2,3);
insert into TestParameter(id_test, id_param) values (2,5);

--EDID
insert into TestParameter(id_test, id_param) values (3,5);
insert into TestParameter(id_test, id_param) values (3,6);
insert into TestParameter(id_test, id_param) values (3,7);
insert into TestParameter(id_test, id_param) values (3,8);
insert into TestParameter(id_test, id_param) values (3,9);
insert into TestParameter(id_test, id_param) values (3,10);
insert into TestParameter(id_test, id_param) values (3,11);
insert into TestParameter(id_test, id_param) values (3,12);
insert into TestParameter(id_test, id_param) values (3,13);
insert into TestParameter(id_test, id_param) values (3,14);
insert into TestParameter(id_test, id_param) values (3,15);
insert into TestParameter(id_test, id_param) values (3,16);
insert into TestParameter(id_test, id_param) values (3,17);
insert into TestParameter(id_test, id_param) values (3,18);
insert into TestParameter(id_test, id_param) values (3,19);
insert into TestParameter(id_test, id_param) values (3,20);
insert into TestParameter(id_test, id_param) values (3,21);
insert into TestParameter(id_test, id_param) values (3,22);
insert into TestParameter(id_test, id_param) values (3,23);
insert into TestParameter(id_test, id_param) values (3,24);
insert into TestParameter(id_test, id_param) values (3,25);
insert into TestParameter(id_test, id_param) values (3,26);
insert into TestParameter(id_test, id_param) values (3,27);
insert into TestParameter(id_test, id_param) values (3,28);
insert into TestParameter(id_test, id_param) values (3,29);
insert into TestParameter(id_test, id_param) values (3,30);
insert into TestParameter(id_test, id_param) values (3,31);
insert into TestParameter(id_test, id_param) values (3,32);
insert into TestParameter(id_test, id_param) values (3,33);
insert into TestParameter(id_test, id_param) values (3,34);
insert into TestParameter(id_test, id_param) values (3,35);
insert into TestParameter(id_test, id_param) values (3,36);
insert into TestParameter(id_test, id_param) values (3,37);
insert into TestParameter(id_test, id_param) values (3,38);
insert into TestParameter(id_test, id_param) values (3,39);
insert into TestParameter(id_test, id_param) values (3,40);
insert into TestParameter(id_test, id_param) values (3,41);
insert into TestParameter(id_test, id_param) values (3,42);
insert into TestParameter(id_test, id_param) values (3,43);
insert into TestParameter(id_test, id_param) values (3,44);
insert into TestParameter(id_test, id_param) values (3,45);
insert into TestParameter(id_test, id_param) values (3,47);

insert into TestParameter(id_test, id_param) values (4,56); -- timing
-- insert into TestParameter(id_test, id_param) values (4,49); -- bars
insert into TestParameter(id_test, id_param) values (4,50); -- gray_pattern
-- insert into TestParameter(id_test, id_param) values (4,48); -- white_pattern
insert into TestParameter(id_test, id_param) values (4,3);  -- delay
-- insert into TestParameter(id_test, id_param) values (4,51); -- chroma_delay
insert into TestParameter(id_test, id_param) values (4,52); -- limit_x_min
insert into TestParameter(id_test, id_param) values (4,53); -- limit_x_max
insert into TestParameter(id_test, id_param) values (4,54); -- limit_y_min
insert into TestParameter(id_test, id_param) values (4,55); -- limit_y_max
insert into TestParameter(id_test, id_param) values (4,5);  -- sampling
insert into TestParameter(id_test, id_param) values (4,57); -- source

insert into TestParameter(id_test, id_param) values (5,3);
insert into TestParameter(id_test, id_param) values (5,5);

insert into TestParameter(id_test, id_param) values (6,56); --timing
-- insert into TestParameter(id_test, id_param) values (6,48); --white pattern
-- insert into TestParameter(id_test, id_param) values (6,58); --delay white pattern
insert into TestParameter(id_test, id_param) values (6,60); --pattern
insert into TestParameter(id_test, id_param) values (6,3); --delay
 insert into TestParameter(id_test, id_param) values (6,59); --delay hdmi pattern
insert into TestParameter(id_test, id_param) values (6,5); --sampling


-- Panel test
insert into TestParameter(id_test, id_param) values (7,5); --sampling


insert into TestParameter(id_test, id_param) values (7,56); --timing
insert into TestParameter(id_test, id_param) values (7,58); --crop_pattern
-- insert into TestParameter(id_test, id_param) values (7,59); --delay_crop_pattern



insert into TestParameter(id_test, id_param) values (7,62); --white_pattern



-- insert into TestParameter(id_test, id_param) values (7,66); --inches
insert into TestParameter(id_test, id_param) values (7,65); --dead_pixels_number
insert into TestParameter(id_test, id_param) values (7,66); --pixels_distance_mm

insert into TestParameter(id_test, id_param) values (7,67); --
insert into TestParameter(id_test, id_param) values (7,68); --
insert into TestParameter(id_test, id_param) values (7,69); --pixel_width_X
insert into TestParameter(id_test, id_param) values (7,70); --pixel_height_Y
insert into TestParameter(id_test, id_param) values (7,71); --height_millimeters
insert into TestParameter(id_test, id_param) values (7,72); --width_millimeters





insert into TestParameter(id_test, id_param) values (8,61); --command
insert into TestParameter(id_test, id_param) values (8,3); --delay
insert into TestParameter(id_test, id_param) values (8,5); --sampling

-- -- UPanel test
-- insert into TestParameter(id_test, id_param) values (9,5); --sampling
-- insert into TestParameter(id_test, id_param) values (9,56); --timing

-- insert into TestParameter(id_test, id_param) values (9,58); --crop_pattern

-- insert into TestParameter(id_test, id_param) values (9,62); --white_pattern

-- -- insert into TestParameter(id_test, id_param) values (9,66); --inches
-- insert into TestParameter(id_test, id_param) values (9,67); --dead_pixels_number
-- insert into TestParameter(id_test, id_param) values (9,68); --pixels_distance_mm
-- insert into TestParameter(id_test, id_param) values (9,69); --pixel_width_X
-- insert into TestParameter(id_test, id_param) values (9,70); --pixel_height_Y
-- insert into TestParameter(id_test, id_param) values (9,71); --height_millimeters
-- insert into TestParameter(id_test, id_param) values (9,72); --width_millimeters




-- model only for testing
--INSERT INTO Model(name, brand, timing) values ('AOC', 'TEST', 105);

INSERT INTO Model(name,brand, timing) values('E2002b','LENOVO', 250);

insert into ModelTest(id_model, id_test, sequence, activated) values(1,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(1,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(1,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(1,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(1,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(1,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(1,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,1, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,1, '17');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,1, '10');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,1, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,1, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,1, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,1, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,1, '20');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,1, '2');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 1, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,1, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3,1, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,1, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,1, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 1, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 1, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 1, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 1, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 1, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 1, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 1, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 1, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 1, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 1, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 1, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 1, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 1, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 5, 1, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 1, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 1, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 1, '1');



INSERT INTO Model(name,brand, timing) VALUES('E2003b', 'LENOVO', 250);
insert into ModelTest(id_model, id_test, sequence, activated) values(2,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(2,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(2,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(2,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(2,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(2,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(2,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,2, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,2, '17');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,2, '3.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,2, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,2, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,2, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,2, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,2, '20');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,2, '5');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 2, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,2, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 2, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,2, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,2, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 2, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 2, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 2, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 2, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 2, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 2, 'hdmi');


insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 2, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 2, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 2, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 2, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 2, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 2, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 2, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 2, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 2, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 2, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 2, '1');


INSERT INTO Model(name,brand, timing) VALUES('T22i-10', 'LENOVO', 143);

insert into ModelTest(id_model, id_test, sequence, activated) values(3,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(3,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(3,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(3,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(3,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(3,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(3,8,6,0);


insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,3, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,3, '20.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,3, '3.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,3, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,3, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,3, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,3, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,3, '20');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,3, '8');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 3, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,3, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 3, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,3, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,3, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 3, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 3, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 3, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 3, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 3, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 3, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 3, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 3, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 3, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 3, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 3, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 3, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 3, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 3, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 3, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 3, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 3, '1');


INSERT INTO Model(name,brand, timing) VALUES ('D2216H','DELL', 143);

insert into ModelTest(id_model, id_test, sequence, activated) values(4,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(4,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(4,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(4,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(4,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(4,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(4,8,6,0);


insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,4, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,4, '30.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,4, '3.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,4, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,4, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,4, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,4, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,4, '7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,4, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 4, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,4, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 4, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,4, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,4, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51,4, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52,4, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53,4, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54,4, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55,4, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 4, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 4, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 4, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 4, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 4, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 4, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 4, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 4, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 4, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 4, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 4, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 4, '1');


INSERT INTO Model(name,brand, timing) VALUES('P1917S', 'DELL', 143);

insert into ModelTest(id_model, id_test, sequence, activated) values(5,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(5,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(5,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(5,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(5,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(5,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(5,8,6,0);


insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,5, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,5, '14.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,5, '4.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,5, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,5, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,5, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,5, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,5, '18');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,5, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 5, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,5, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 5, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,5, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,5, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 5, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 5, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 5, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 5, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 5, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 5, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 5, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 5, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 5, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 5, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 5, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 5, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 5, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 5, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 5, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 5, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 5, '1');


INSERT INTO Model(name,brand, timing) VALUES('P2217H', 'DELL', 239);


insert into ModelTest(id_model, id_test, sequence, activated) values(6,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(6,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(6,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(6,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(6,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(6,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(6,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,6, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,6, '16.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,6, '4.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,6, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,6, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,6, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,6, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,6, '7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,6, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 6, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,6, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 6, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,6, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,6, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 6, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 6, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 6, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 6, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 6, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 6, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 6, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 6, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 6, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 6, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 6, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 6, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 6, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 6, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 6, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 6, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 6, '1');

INSERT INTO Model(name,brand, timing) VALUES ('E1916H','DELL', 239);


insert into ModelTest(id_model, id_test, sequence, activated) values(7,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(7,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(7,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(7,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(7,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(7,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(7,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,7, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,7, '17.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,7, '3.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,7, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,7, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,7, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,7, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,7, '7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,7, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 7, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,7, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 7, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,7, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,7, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 7, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 7, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 7, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 7, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 7, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 7, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 7, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 7, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 7, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 7, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 7, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 7, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 7, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 7, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 7, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 7, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 7, '1');


INSERT INTO Model(name,brand, timing) VALUES('SE2216H', 'DELL', 108);


insert into ModelTest(id_model, id_test, sequence, activated) values(8,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(8,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(8,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(8,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(8,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(8,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(8,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,8, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,8, '24.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,8, '4.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,8, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,8, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,8, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,8, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,8, '7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,8, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 8, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,8, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 8, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,8, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,8, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 8, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 8, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 8, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 8, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 8, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 8, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 8, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 8, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 8, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 8, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 8, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 8, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 8, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 8, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 8, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 8, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 8, '1');


INSERT INTO Model(name,brand, timing) VALUES('P2016 QISDA', 'DELL', 143);


insert into ModelTest(id_model, id_test, sequence, activated) values(9,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(9,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(9,3,3,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(9,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(9,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(9,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(9,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,9, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,9, '30.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,9, '3.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,9, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,9, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,9, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,9, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,9, '20');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,9, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 9, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,9, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,9, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 9, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 9, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 9, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 9, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 9, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 9, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 9, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 9, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 9, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 9, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 9, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 9, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 9, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 9, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 9, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 9, '1');

INSERT INTO Model(name,brand, timing) VALUES('P2016', 'DELL', 143);


insert into ModelTest(id_model, id_test, sequence, activated) values(10,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(10,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(10,3,3,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(10,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(10,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(10,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(10,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,10, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,10, '30.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,10, '3.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,10, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,10, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,10, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,10, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,10, '20');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,10, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 10, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,10, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,10, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 10, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 10, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 10, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 10, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 10, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 10, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 10, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 10, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 10, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 10, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 10, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 10, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 10, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 10, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 10, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 10, '1');


INSERT INTO Model(name,brand, timing) VALUES('P2317H', 'DELL', 143);


insert into ModelTest(id_model, id_test, sequence, activated) values(11,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(11,2,2,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(11,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(11,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(11,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(11,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(11,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,11, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,11, '17.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,11, '4.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,11, '1.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,11, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,11, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,11, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,11, '20');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,11, '3');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,11, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,11, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 11, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,11, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,11, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 11, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 11, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 11, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 11, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 11, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 11, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 11, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 11, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 11, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 11, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 11, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 11, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 11, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 11, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 11, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 11, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 11, '1');

--AOC
-- MODEL e970Swnl
INSERT INTO Model(name,brand, timing) VALUES('e970Swnl', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(12,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(12,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(12,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(12,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(12,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(12,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(12,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,12, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,12, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 12, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,12, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,12, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 12, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3,12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5,12, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 12, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 12, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 12, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 12, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 12, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 12, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 12, '1');

-- MODEL e2270Swn
INSERT INTO Model(name,brand, timing) VALUES('e2270Swn', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(13,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(13,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(13,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(13,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(13,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(13,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(13,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,13, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,13, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 13, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,13, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,13, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 13, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 13, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 13, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 13, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 13, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 13, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 13, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 13, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 13, '1');


-- MODEL E1670Swu-E
INSERT INTO Model(name,brand, timing) VALUES('E1670Swu-E', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(14,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(14,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(14,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(14,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(14,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(14,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(14,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,14, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,14, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 14, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,14, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,14, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 14, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 14, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 14, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 14, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 14, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 14, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 14, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 14, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 14, '1');


-- MODEL M2470Swd2
INSERT INTO Model(name,brand, timing) VALUES('M2470Swd2', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(15,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(15,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(15,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(15,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(15,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(15,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(15,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,15, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,15, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 15, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,15, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,15, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 15, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 15, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 15, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 15, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 15, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 15, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 15, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 15, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 15, '1');


-- MODEL M2470PWH
INSERT INTO Model(name,brand, timing) VALUES('M2470PWH', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(16,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(16,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(16,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(16,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(16,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(16,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(16,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,16, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,16, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 16, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,16, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,16, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55,16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 16, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 16, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 16, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 16, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 16, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 16, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 16, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 16, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 16, '1');

-- MODEL G2260VWQ6
INSERT INTO Model(name,brand, timing) VALUES('G2260VWQ6', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(17,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(17,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(17,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(17,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(17,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(17,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(17,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,17, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,17, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 17, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,17, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,17, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 17, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 17, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 17, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 17, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 17, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 17, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 17, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 17, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 17, '1');


-- MODEL E2023PWD
INSERT INTO Model(name,brand, timing) VALUES('E2023PWD', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(18,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(18,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(18,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(18,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(18,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(18,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(18,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,18, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,18, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 18, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,18, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,18, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 18, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 18, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 18, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 18, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 18, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 18, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 18, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 18, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 18, '1');

-- MODEL E970PWHEN
INSERT INTO Model(name,brand, timing) VALUES('E970PWHEN', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(19,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(19,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(19,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(19,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(19,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(19,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(19,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,19, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,19, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 19, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,19, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,19, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 19, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 19, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 19, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 19, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 19, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 19, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 19, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 19, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 19, '1');


-- MODEL E2270PWHE
INSERT INTO Model(name,brand, timing) VALUES('E2270PWHE', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(20,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(20,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(20,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(20,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(20,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(20,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(20,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,20, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,20, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 20, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,20, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,20, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 20, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 20, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 20, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 20, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 20, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 20, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 20, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 20, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 20, '1');



-- MODEL G2460VQ6
INSERT INTO Model(name,brand, timing) VALUES('G2460VQ6', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(21,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(21,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(21,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(21,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(21,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(21,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(21,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,21, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,21, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 21, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,21, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,21, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 21, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 21, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 21, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 21, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 21, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 21, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 21, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 21, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 21, '1');


-- MODEL G2460PF
INSERT INTO Model(name,brand, timing) VALUES('G2460PF', 'AOC', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(22,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(22,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(22,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(22,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(22,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(22,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(22,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,22, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,22, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 22, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,22, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,22, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 22, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 22, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 22, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 22, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 22, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 22, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 22, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 22, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 22, '1');

--PHILIPS
-- MODEL 223V5LHSB2
INSERT INTO Model(name,brand, timing) VALUES('223V5LHSB2', 'PHILIPS', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(23,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(23,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(23,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(23,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(23,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(23,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(23,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,23, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,23, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 23, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,23, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,23, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 23, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 23, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 23, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 23, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 23, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 23, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 23, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 23, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 23, '1');


-- MODEL 223V5LHSW
INSERT INTO Model(name,brand, timing) VALUES('223V5LHSW', 'PHILIPS', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(24,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(24,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(24,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(24,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(24,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(24,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(24,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,24, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,24, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 24, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,24, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,24, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 24, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 24, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 24, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 24, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 24, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 24, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 24, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 24, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 24, '1');

-- MODEL 288P6LJEB
INSERT INTO Model(name,brand, timing) VALUES('288P6LJEB', 'PHILIPS', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(25,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(25,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(25,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(25,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(25,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(25,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(25,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,25, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,25, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 25, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,25, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,25, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 25, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 25, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 25, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 25, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 25, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 25, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 25, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 25, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 25, '1');

-- MODEL 193V5LSB2
INSERT INTO Model(name,brand, timing) VALUES('193V5LSB2', 'PHILIPS', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(26,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(26,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(26,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(26,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(26,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(26,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(26,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,26, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,26, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 26, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,26, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,26, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 26, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 26, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 26, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 26, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 26, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 26, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 26, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 26, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 26, '1');


-- MODEL 243V5QHABa
INSERT INTO Model(name,brand, timing) VALUES('243V5QHABa', 'PHILIPS', 143);
insert into ModelTest(id_model, id_test, sequence, activated) values(27,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(27,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(27,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(27,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(27,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(27,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(27,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,27, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,27, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 27, '0.0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,27, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,27, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 27, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 27, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 27, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 27, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 27, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 27, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 27, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 27, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 27, '1');

-- MODEL P2018H
INSERT INTO Model(name,brand, timing) VALUES('P2018H', 'DELL', 143);

insert into ModelTest(id_model, id_test, sequence, activated) values(28,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(28,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(28,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(28,4,4,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(28,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(28,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(28,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,28, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,28, '16.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,28, '4.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,28, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,28, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,28, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,28, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,28, '19');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,28, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,28, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,28, '48');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 28, '0.5');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,28, '105');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,28, '32');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 28, '0.7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 28, '0.318');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 28, '0.33');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 28, '0.33');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 28, '0.339');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 28, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 28, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 28, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 28, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 28, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 28, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 28, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 28, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 28, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 28, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 28, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 28, '1');

-- MODEL P2319H
INSERT INTO Model(name,brand, timing) VALUES('P2319H', 'DELL', 143);


insert into ModelTest(id_model, id_test, sequence, activated) values(29,1,1,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(29,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(29,3,3,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(29,4,4,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(29,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(29,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(29,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,29, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,29, '16.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,29, '6.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,29, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,29, '192');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,29, '0.3');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,29, '7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,29, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,29, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,29, '48');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 29, '0.5');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,29, '105');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,29, '32');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 29, '0.7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 29, '0.318');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 29, '0.33');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 29, '0.33');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 29, '0.339');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 29, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 29, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 29, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 29, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 29, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 29, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 29, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 29, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 29, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 29, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 29, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 29, '1');

-- MODEL P2719H WISTRON
INSERT INTO Model(name,brand, timing) VALUES('P2719H WISTRON', 'DELL', 143);

insert into ModelTest(id_model, id_test, sequence, activated) values(30,1,1,1);
insert into ModelTest(id_model, id_test, sequence, activated) values(30,2,2,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(30,3,3,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(30,4,4,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(30,5,5,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(30,6,6,0);
insert into ModelTest(id_model, id_test, sequence, activated) values(30,8,6,0);

insert into TestParameterValue(id_test, id_param, id_model, value) values (1,1,30, '105');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,2,30, '19.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,3,30, '4.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,4,30, '0.5');
insert into TestParameterValue(id_test, id_param, id_model, value) values (1,5,30, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (2,46,30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,2,30, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,3,30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (2,5,30, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (4,56,30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,50,30, '48');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,3, 30, '0.5');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,48,30, '105');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,49,30, '32');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (4,51, 30, '0.7');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,52, 30, '0.318');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,53, 30, '0.33');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,54, 30, '0.33');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,55, 30, '0.339');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,5, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (4,57, 30, 'hdmi');

insert into TestParameterValue(id_test, id_param, id_model, value) values (5,3, 30, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (5,5, 30, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 56, 30, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 48, 30, '0');
-- insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 58, 30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 60, 30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6, 3, 30, '0.0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (6,  5, 30, '1');

insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 61, 30, '6E 51 86 03 FE 04 00 00 00 40');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 3, 30, '0.1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (8, 5, 30, '1');

--EDID TestParameterValues

-- LENOVO
-- MODEL E2002b
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 1, 'E2002b.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,5,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,6,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,7,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,8,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,9,1, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,10,1, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,11,1, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,12,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,13,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,14,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,15,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,16,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,17,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,18,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,19,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,20,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,21,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,22,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,23,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,24,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,25,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,26,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,27,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,28,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,29,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,30,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,31,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,32,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,33,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,34,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,35,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,36,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,37,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,38,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,39,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,40,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,41,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,42,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,43,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,44,1, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,45,1, '1');

-- MODEL E2003b
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 2, 'E2003b.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,5,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,6,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,7,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,8,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,9,2, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,10,2, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,11,2, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,12,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,13,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,14,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,15,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,16,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,17,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,18,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,19,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,20,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,21,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,22,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,23,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,24,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,25,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,26,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,27,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,28,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,29,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,30,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,31,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,32,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,33,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,34,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,35,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,36,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,37,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,38,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,39,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,40,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,41,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,42,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,43,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,44,2, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,45,2, '1');

-- MODEL T22i-10
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 3, 'T22i-10.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,5,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,6,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,7,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,8,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,9,3, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,10,3, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,11,3, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,12,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,13,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,14,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,15,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,16,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,17,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,18,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,19,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,20,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,21,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,22,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,23,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,24,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,25,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,26,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,27,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,28,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,29,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,30,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,31,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,32,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,33,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,34,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,35,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,36,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,37,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,38,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,39,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,40,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,41,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,42,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,43,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,44,3, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,45,3, '1');

-- DELL
-- MODEL D2216H
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 4, 'D2216H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3,5,4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 4, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 4, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 4, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 4, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 4, '1');

-- MODEL P1917S
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 5, 'P1917S.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 5, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 5, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 5, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 5, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 5, '1');

-- MODEL P2217H
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 6, 'P2217H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 6, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 6, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 6, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 6, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 6, '1');

-- MODEL E1916H
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 7, 'E1916H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 7, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 7, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 7, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 7, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 7, '1');

-- MODEL SE2216H
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 8, 'SE2216H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 8, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 8, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 8, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 8, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 8, '1');

-- MODEL P2016 QISDA NO EDID TEST
--insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 9, 'SE2216H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 9, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 9, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 9, '0');

-- MODEL P2016 NO EDID TEST
--insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 10, 'SE2216H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 10, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 10, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 10, '0');

-- MODEL P2317H
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 11, 'P2317H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 11, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 11, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 11, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 11, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 11, '1');

-- AOC
-- MODEL e970Swnl
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 12, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 12, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 12, 'e970Swnl.dat');

-- AOC
-- MODEL e2270Swn
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 13, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 13, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 13, 'e2270Swn.dat');

-- MODEL E1670Swu-E
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 14, 'E1670Swu-E.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 14, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 14, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 14, '1');

-- MODEL M2470Swd2
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 15, 'M2470Swd2.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 15, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 15, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 15, '1');

-- MODEL M2470PWH
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 16, 'M2470PWH.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 16, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 16, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 16, '1');

-- MODEL G2260VWQ6
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 17, 'G2260VWQ6.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 17, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 17, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 17, '1');

-- MODEL E2023PWD
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 18, 'E2023PWD.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 18, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 18, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 18, '1');

-- MODEL E970PWHEN
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 19, 'E970PWHEN.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 19, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 19, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 19, '1');

-- MODEL E2270PWHE
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 20, 'E2270PWHE.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 20, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 20, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 20, '1');

-- MODEL G2460VQ6
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 21, 'G2460VQ6.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 21, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 21, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 21, '1');

-- MODEL G2460PF
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 22, 'G2460PF.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 22, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 22, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 22, '1');

-- PHILIPS
-- MODEL 223V5LHSB2
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 23, '223V5LHSB2.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 23, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 23, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 23, '1');

-- MODEL 223V5LHSW
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 24, '223V5LHSW.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 24, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 24, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 24, '1');

-- MODEL 288P6LJEB
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 25, '288P6LJEB.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 25, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 25, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 25, '1');

-- MODEL 193V5LSB2
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 26, '193V5LSB2.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 26, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 26, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 26, '1');

-- MODEL 243V5QHABa
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 27, '243V5QHABa.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 27, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 27, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 27, '1');


-- MODEL P2018H
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 28, 'P2018H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 28, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 28, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 28, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 28, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 28, '1');


-- MODEL P2319H
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 29, 'P2319H.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 29, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 29, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 29, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 29, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 29, '1');


-- MODEL P2719H WISTRON
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 47, 30, 'P2719H wistron.dat');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 5, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 6, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 7, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 8, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 9, 30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 10, 30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 11, 30, '0');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 12, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 13, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 14, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 15, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 16, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 17, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 18, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 19, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 20, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 21, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 22, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 23, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 24, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 25, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 26, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 27, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 28, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 29, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 30, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 31, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 32, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 33, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 34, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 35, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 36, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 37, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 38, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 39, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 40, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 41, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 42, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 43, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 44, 30, '1');
insert into TestParameterValue(id_test, id_param, id_model, value) values (3, 45, 30, '1');