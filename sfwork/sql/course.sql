use ctplatform;
create table course (
	id int primary key auto_increment,
	course_number varchar(20) ,
	title varchar(30) not null ,
	teacher varchar(20) not null,
	info varchar(500),
	courseType int not null,
	course_studentno varchar(20));

insert into course values (null,'001','��ҵweb�������', '����', '������¼ע���û��ĸ������ϣ��ṹ���3.1��ʾ��',1,'20050001');
insert into course values (null,'002','MVC�ṹ����', 'kevin', '�������ȼ�Ҫ�������񡢵���������վ�������˵���������վ��ʵ�ּ����������ͻ��˼�����Web�������˼������������ݿ⼼����Ȼ�����������������̵�Ĺ��ɣ�������ǰ̨ϵͳ����̨ϵͳ�Ĺ��ܣ���ǰ̨�˿Ͳ������̡���Ա�������̡���̨�������̼������Ĺ������̡�',1,'20050002');
insert into course values (null,'003','���ݽṹ', 'KevinPlatform', '�����о�����������վ�������ʵ�֣�������JSP��̬��ҳ����ʵ����һ��С�͵���������վ��������ꡣ�������ȼ�Ҫ�����˵���������ʵ�ּ����������̵�Ĺ��ɼ���Ҫ���̣�Ȼ����ϸ�����������������������ϵͳ��ƣ�����������������JSPʵ�ַ���������ϸ�ڣ��������л��������á����ݿ⽨������������ģ���JSPʵ��ϸ�ڵȡ������̵�ʵ���˻�����ǰ̨���ܺͺ�̨�����ܡ�',1,'20050003');


insert into course values (null,'004','����ϵͳ', 'jack', 'h the technological dandwebsites.',2,'20050001');
insert into course values (null,'005','ASP���', 'jack', 'ͼ������������壻ͼ�ı���Ӧ����ͼƬ���·���������',2,'20050001');
insert into course values (null,'006','��ҵCoreJava��̿�������', 'kevin', '������¼��Ʒ(��)����Ϣ����ṹ��ͼ3.4��ʾ��',2,'20050003');
insert into course values (null,'007','JAVA���', '����', 'JSP has great advantage on implementation active websites, it worthy for further learning and researching.',2,'20050002');


insert into course values (null,'008','C++', 'kevin', 'Tieg enrionment, the creation of databases, and the implementation details of',3,'20050002');
insert into course values (null,'009','�����߼���ϵͳ', 'tom', '��ϵͳ����ϵ�ṹ�Ͽ�������������վһ���������������/��������Browser/Server��B/S���ṹ����������������վ��Ҫ���������Web�����������ݿ����������������ɡ�',3,'20050003');
insert into course values (null,'010','PHP���ϰ��', 'kevin', '���ݿ�ĸ���ṹ�����Ϻ󣬾Ϳ��Խ�����ĸ���ṹת��Ϊĳ�����ݿ�ϵͳ��֧�ֵ�ʵ������ģ�ͣ�Ҳ�������ݿ���߼��ṹ��',3,'20050001');
insert into course values (null,'011','EJB��ϸ����', '�츳��ʹ', '��ϵͳ���õļ�������ΪJSP +Tomcat+ Access����ʹ��JSP��ΪWeb�������˿������ԣ�����Tomcat��ΪWeb��������JSP���棬����Access��Ϊ��̨�������ݿ����ϵͳ��',3,'20050004');
