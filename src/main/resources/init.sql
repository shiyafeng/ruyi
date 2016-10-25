CREATE TABLE datasource(
id int PRIMARY KEY  AUTO_INCREMENT,
projectid int,
name VARCHAR(30),
url VARCHAR(150),
username VARCHAR(20),
password VARCHAR(20)
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
name varchar(100),
code varchar(100)
);

insert into projectdef(id,name,code) values(1,'default','default')

