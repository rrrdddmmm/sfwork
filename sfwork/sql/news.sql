use ctplatform;

create table news (
	id int primary key auto_increment,
	title varchar(255),
	content varchar(500) ,
	ndate datetime,
	deliver varchar(30));
	
	
insert into news values (null,'喜报：《C/C++程序设计》被推荐申报国家级精品课程','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin');
insert into news values (null,'期末考试快到了,同学们加油!','期末考试快到了,同学们加油!期末考试快到了,同学们加油!期末考试快到了,同学们加油!',now(),'KevinPlatform');
insert into news values (null,'C/C++程序设计》','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin');
insert into news values (null,'课程设计','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin'); 
insert into news values (null,'毕业设计','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin'); 
insert into news values (null,'找工作','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin'); 
insert into news values (null,'天津经济开发区','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin'); 
insert into news values (null,'天津花苑产业园','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin'); 
insert into news values (null,'IBM服务','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin'); 
insert into news values (null,'KevinPlatform','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin'); 
insert into news values (null,'KevinPlatform设计','喜报：《C/C++程序设计》被推荐申报国家级精品课程',now(),'Kevin');

 