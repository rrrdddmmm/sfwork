use ctplatform;
create table course (
	id int primary key auto_increment,
	course_number varchar(20) ,
	title varchar(30) not null ,
	teacher varchar(20) not null,
	info varchar(500),
	courseType int not null,
	course_studentno varchar(20));

insert into course values (null,'001','企业web基础编程', '凯文', '用来记录注册用户的个人资料，结构如表3.1所示：',1,'20050001');
insert into course values (null,'002','MVC结构解析', 'kevin', '论文首先简要电子商务、电子商务网站，分析了电子商务网站的实现技术，包括客户端技术、Web服务器端技术和网络数据库技术。然后论文讨论了网上商店的构成，介绍了前台系统、后台系统的功能，及前台顾客操作流程、会员操作流程、后台管理流程及完整的购物流程。',1,'20050002');
insert into course values (null,'003','数据结构', 'KevinPlatform', '论文研究电子商务网站的设计与实现，并采用JSP动态网页技术实现了一个小型电子商务网站即网上书店。论文首先简要介绍了电子商务及其实现技术，网上商店的构成及主要流程；然后详细介绍了网上书店的需求分析和系统设计，并给出了网上书店的JSP实现方案及技术细节，包括运行环境的配置、数据库建立及各个功能模块的JSP实现细节等。网上商店实现了基本的前台功能和后台管理功能。',1,'20050003');


insert into course values (null,'004','操作系统', 'jack', 'h the technological dandwebsites.',2,'20050001');
insert into course values (null,'005','ASP编程', 'jack', '图内文字五号宋体；图的标题应处于图片下下方，并居中',2,'20050001');
insert into course values (null,'006','企业CoreJava编程开发技术', 'kevin', '用来记录商品(书)的信息，表结构如图3.4所示：',2,'20050003');
insert into course values (null,'007','JAVA编程', '凯文', 'JSP has great advantage on implementation active websites, it worthy for further learning and researching.',2,'20050002');


insert into course values (null,'008','C++', 'kevin', 'Tieg enrionment, the creation of databases, and the implementation details of',3,'20050002');
insert into course values (null,'009','数字逻辑与系统', 'tom', '从系统的体系结构上看，电子商务网站一般采用三层的浏览器/服务器（Browser/Server，B/S）结构，整个电子商务网站主要由浏览器、Web服务器和数据库服务器三个部分组成。',3,'20050003');
insert into course values (null,'010','PHP编程习惯', 'kevin', '数据库的概念结构设计完毕后，就可以将上面的概念结构转化为某种数据库系统所支持的实际数据模型，也就是数据库的逻辑结构。',3,'20050001');
insert into course values (null,'011','EJB详细介绍', '天赋天使', '本系统采用的技术方案为JSP +Tomcat+ Access，即使用JSP作为Web服务器端开发语言，采用Tomcat作为Web服务器和JSP引擎，采用Access作为后台网络数据库管理系统。',3,'20050004');
