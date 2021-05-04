CREATE TABLE IF NOT EXISTS Device(
  id integer primary key autoincrement,
  name text,
  port text,
  baudrate integer,
  timeout real);

CREATE TABLE IF NOT EXISTS Test(
  id integer primary key autoincrement,
  name text,
  type int);

CREATE TABLE IF NOT EXISTS Model(
    id integer primary key autoincrement,
    model text,
    brand text,
    timing int,
    pattern int,
    power float,
    sampling int,
    delay_standby int,
    power_standby float,
    timing_standby float,
    lower_power int);


CREATE TABLE IF NOT EXISTS Resolution(
  id int primary key,
  resolution text,
  frequency float
);
