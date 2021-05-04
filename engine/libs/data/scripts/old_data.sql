-- Device
INSERT INTO Device(name,port,baudrate,timeout) VALUES('Wattmeter','COM4',2400,1);
INSERT INTO Device(name,port,baudrate,timeout) VALUES('Chroma','COM6',115200,1);
INSERT INTO Device(name,port,baudrate,timeout) VALUES('uc_icts','COM3',115200,1);
-- INSERT INTO Devices(name,port,baudrate,timeout) VALUES('IDCT','COM5',9600,1);


-- Test
INSERT INTO Test(name, type) VALUES('Power Test', 1);
INSERT INTO Test(name, type) VALUES ('StandBy Test', 2);
-- INSERT INTO Test(name, type) VALUES ('EdidTest', 3);


-- model
--  INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('AA 4012', 'PHILIPS', 14, 30, 20, 4, 68);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('AB 2031', 'PHILIPS', 14, 30, 15, 1, 48);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('AD 2402', 'PHILIPS', 10, 100, 20, 4, 56);
-- 	INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('AE 2301', 'PHILIPS', 10, 100, 15, 1, 67);

-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('e970Swnl', 'AOC', 14, 30, 20, 4, 68);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('e2270Swn', 'AOC', 10, 30, 15, 1, 48);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('E1670Swu-E', 'AOC', 14, 100, 20, 4, 56);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('M2470Swd2', 'AOC', 10, 100, 15, 1, 67);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('M2470PWH', 'AOC', 10, 100, 15, 1, 67);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('G2260VWQ6', 'AOC', 10, 100, 15, 1, 67);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('E2023PWD', 'AOC', 10, 100, 15, 1, 67);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('E970PWHEN', 'AOC', 10, 100, 15, 1, 67);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('E2270PWHE', 'AOC', 10, 100, 15, 1, 67);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('G2460VQ6', 'AOC', 10, 100, 15, 1, 67);
-- INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern) VALUES('G2460PF', 'AOC', 10, 100, 15, 1, 67);


INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES ('E2002b','LENOVO', 250, 17, 2, 192,20, 0.5, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('E2003b', 'LENOVO', 250, 17, 5, 192,20,0.5, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('T22i-10', 'LENOVO', 143, 20, 8, 192,20, 0.3, 105);

INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES ('D2216H','DELL', 143, 30, 3, 192,7, 0.5, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('P1917S', 'DELL', 143, 14, 5, 192,18,0.3, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('P2217H', 'DELL', 239, 16, 3, 192,7, 0.3, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES ('E1916H','DELL', 143, 17, 3, 192,7, 0.3, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('SE2216H', 'DELL', 108, 24, 3, 192,7,0.3, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('P2016 QISDA', 'DELL', 143, 30, 3, 192,20, 0.3, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('P2016', 'DELL', 143, 30, 6, 192,20,0.3, 105);
INSERT INTO Model(model,brand, timing, power, sampling, timing_standby, delay_standby, power_standby ,pattern)
VALUES('P2317H', 'DELL', 143, 17, 7, 192,20, 0.3, 105);

INSERT INTO Model(model, brand, timing, power, sampling, delay_standby, pattern, power_standby) VALUES('TEST', 'AOC', 14,  30, 3, 40, 105, 1.2);

INSERT INTO Resolution(id, resolution, frequency)  VALUES (143, '1920x1080' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (239, '1600x900' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (108, '1400x900' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (250, '1600x900' , 60.0);
INSERT INTO Resolution(id, resolution, frequency)  VALUES (14, '1024x768' , 60.0);