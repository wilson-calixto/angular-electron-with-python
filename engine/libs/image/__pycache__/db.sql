CREATE TABLE IF NOT EXISTS Device(
  id integer primary key autoincrement,
  name text,
  port text,
  baudrate integer,
  timeout real);

CREATE TABLE IF NOT EXISTS Station(
  name text,
  ip text);


CREATE TABLE IF NOT EXISTS Test(
  id integer primary key autoincrement,
  name text,
  type int);

CREATE TABLE IF NOT EXISTS WizardForThreshold(
  threshold text,
  current text,
  gamma float,
  exposure int,
  id_model int primary key);

-- CREATE TABLE IF NOT EXISTS Threshold(
--   threshold text);


CREATE TABLE IF NOT EXISTS Parameter(
  id integer primary key autoincrement,
  name text,
  type int,
  default_value text);


CREATE TABLE IF NOT EXISTS TestParameter(
  id_test integer,
  id_param integer,
  foreign key(id_test) references Tests(id),
  foreign key(id_param) references Parameter(id),
  primary key(id_test, id_param));


CREATE TABLE IF NOT EXISTS Model(
    id integer primary key autoincrement,
    name text,
    brand text,
    timing int);


CREATE TABLE IF NOT EXISTS TestParameterValue(
  id_test integer,
  id_param integer,
  id_model integer,
  value text,
  foreign key (id_test, id_param) references TestParameter(id_test, id_param),
  foreign key(id_model) references Model(id),
  primary key(id_test, id_param, id_model));


CREATE TABLE IF NOT EXISTS Resolution(
  id int primary key,
  resolution text,
  frequency float
);


CREATE TABLE IF NOT EXISTS ModelTest(
  id_model int,
  id_test int,
  sequence int,
  activated int,
  foreign key(id_model) references Model(id),
  foreign key(id_test) references Test(id)
);

create table if not exists Camera (
  status varchar(20),
  name varchar(20) primary key,
  r_value float,
  g_value float,
  b_value float,
  gamma float,
  exposure int
);

create table if not exists PanelTestCameras (
  name varchar(20) primary key,
  side varchar(20),
  standard_exposure int,
  standard_gamma float,
  mura_black_exposure int,
  mura_black_gamma float
);
