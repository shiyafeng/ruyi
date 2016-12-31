CREATE ALIAS from_base64 FOR "iform.util.base64.H2base64.decode";

CREATE TABLE datasource(
id int PRIMARY KEY  AUTO_INCREMENT,
projectid int,
name VARCHAR(30),
url VARCHAR(150),
username VARCHAR(20),
password VARCHAR(20)
);
CREATE TABLE dailymail(
id int PRIMARY KEY  AUTO_INCREMENT,
sender VARCHAR(100),
mailserver varchar(100),
port varchar(10),
receiver VARCHAR(2000),
copyer VARCHAR(2000),
password VARCHAR(20),
tts varchar(10),
title varchar(100),
text longtext,
mod longtext
);
--pid is page id
CREATE TABLE formdef(
id int PRIMARY KEY  AUTO_INCREMENT,
pid int ,
projectid int,
path varchar(100),
version int,
created datetime,
json longtext
); 
CREATE TABLE projectdef(
id int PRIMARY KEY  AUTO_INCREMENT,
name varchar(80),
code varchar(80),
token varchar(80)
);

insert into projectdef(id,name,code,token) values(1,'default','default','changetoken')

