create database ctplatform;

use ctplatform;

create table user (
	username varchar(20) primary key, 
	userpassword varchar(20),
	userclass int,
	email varchar(50));

insert into user values ('wuguangyuan', 'wuguangyuan',3,'wuguangyuan757@sina.com');


