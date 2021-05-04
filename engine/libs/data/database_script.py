import sqlite3

DATABASE_NAME = ".uatu_database.db"
CREATE_TABLE_DEVICES = "CREATE TABLE IF NOT EXISTS Devices(id integer primary key autoincrement, name text, port text, baudrate integer, timeout real)"
CREATE_TABLE_TESTS = "CREATE TABLE IF NOT EXISTS Tests(id integer primary key autoincrement, name text)"

C_WATT = "INSERT INTO Devices(name,port,baudrate,timeout) VALUES('wattmeter','COM7',2400,1)"
C_CHROMA = "INSERT INTO Devices(name,port,baudrate,timeout) VALUES('chroma','COM5',115200,1)"
C_IDCT = "INSERT INTO Devices(name,port,baudrate,timeout) VALUES('idct','COM1',9600,1)"
C_UC_ICTS = "INSERT INTO Devices(name,port,baudrate,timeout) VALUES('uc_icts','COM8',9600,1)"

C_PT = "INSERT INTO Tests(name) VALUES('PowerTest')"
