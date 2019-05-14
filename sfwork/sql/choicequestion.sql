use ctplatform;

create table choicequestion (
	id int primary key  auto_increment,
	title varchar(255),
	option1 varchar(100),
	option2 varchar(100),
	option3 varchar(100),
	option4 varchar(100),
	answer varchar(100),
	difficulty int);


insert into choicequestion values(null,'���棨����JDK�е�Java���й��ߡ�','javax','javam','java','javar','java',1);
insert into choicequestion values(null,'����Ļ����ʾ����Ϣ����ȷ������ǣ���','System.out.println("I am Java Expert");','system.out.println("I am Java Expert");','.System.Out.Println("I am Java Expert");','System.out.println(I am Java Expert)','System.out.println("I am Java Expert");',1);
insert into choicequestion values(null,'Java�������ὫJava����ת��Ϊ ����','�ֽ���','��ִ�д���','��������','���϶�����ȷ','�ֽ���',1);
insert into choicequestion values(null,'��JAVA�У�byte�������͵ķ�Χ�ǣ���','-32767 ~ 32768','-32768 ~ 32767','-127 ~ 128','-128 ~ 127','-128 ~ 127',1);
insert into choicequestion values(null,'���棨���������Ϳ�����MAIN�����д��ݲ���','String','Integer','Boolean','Variant','String',1);
insert into choicequestion values(null,'ѡ��JAVA����Ч��ע����������','// this is a comment','*/this is comment','/this is a comment','/*this is a comment*/','/*this is a comment*/',1);
insert into choicequestion values(null,'�����ķ���û�з���ֵ���÷����ķ��������ǣ���','null','void','static','public','void',1);
insert into choicequestion values(null,'ÿ���ඨ���У������Ա��ʼ�����Ա','����','MAIN��������','���췽��','����','���췽��',1);
insert into choicequestion values(null,'��ģ�����Աֻ�ܱ�����ĳ�Ա���ʣ������ܱ��Ǹ���ĳ�Ա���ʡ�','public','private','protected','abstract','private',1);
insert into choicequestion values(null,'���۲���������ʲô�����У���ѭ��������ѭ��һ�Ρ�','while','do-while','for','for-each','do-while',1);
insert into choicequestion values(null,'�������η��������౻�̳�','abstract','static','protected','final','abstract',1);
insert into choicequestion values(null,'������ӵ�����Ժ���Ϊ�򷽷���ʵ�塣','����','��','����','���췽��','����',1);
insert into choicequestion values(null,'�������ﳣ������ָ������','Parent','Child','Superclass','Supclass','Parent',1);
insert into choicequestion values(null,'�������Ǽ����й�ĳ��ʵ������п�����Ϣ�Ĺ��̣��Ա��ʶ��Ӧ�ó�����ص���Ϣ��','����','��װ','����','���췽��','����',1);
insert into choicequestion values(null,' ��Java�У��������ж�������������������������ͬ�����ƶ������ͬʱ�����Ϊ�� ��','�̳�','��̬��','���췽��','��������','��������',1);
insert into choicequestion values(null,'�����ؼ��ֱ�ʾ����һ���෽���������贴�����󼴿ɷ��ʡ�','void','static','return','public','static',1);
insert into choicequestion values(null,'()���η���������Ա�ķ��ʲ������ڸ�����κζ���','abstract','static','return','public','static',1);
insert into choicequestion values(null,'��������������б�ʾΪ��������Ϊ��ģ� ����','����','����','����','��������','����',1);
insert into choicequestion values(null,'���¹ؼ��֣� ��������ֹѭ����䡣','break','exit','end','terminate','break',1);
insert into choicequestion values(null,'JAVA.LANG���ģ����������Ƚ����������Ƿ���ȣ��������򷵻�TRUE��','toString()','compare()','equals()','��������ѡ�����','equals()',1);


insert into choicequestion values(null,'�������Ǽ����й�ĳ��ʵ������п�����Ϣ�Ĺ��̣��Ա��ʶ��Ӧ�ó�����ص���Ϣ��','����','��װ','����','���췽��','����',2);
insert into choicequestion values(null,'�� ����Throwsble�� ���ࡣ','Exception','Error','Object','RuntimeException','Object',2);
insert into choicequestion values(null,'�ܵ�����finally���һ��ʹ�õĿ���( )','try','catch','throw','throws','try',2);
insert into choicequestion values(null,'�������ж���CATCH��ͬʱʹ�ã������쳣��Ӧ������г�','ArithmeticExcepion','NumberFormatExcepion','Excepion','ArrayIndexOutOfBoundsException','Excepion',2);
insert into choicequestion values(null,'Throwable��(  )�ķ��������йش������ϸ��Ϣ��','getMessage( )','tostring( )',' message( )','getOutput( )','getMessage( )',2);
insert into choicequestion values(null,'���ã����������Ի�ȡCalenderʵ����','get( )','getInstance( )','equals( )','getTime( )','getInstance( )',2);
insert into choicequestion values(null,'�����ļ�����CLASS JAVADOC FIELDS','.html�ļ�','.jpx�ļ�','.class�ļ�','.java�ļ�','.class�ļ�',2);
insert into choicequestion values(null,'�����洢�Դ����������','��Ϣ����','���̴���','���ݴ���','�ṹ����','��Ϣ����',2);
insert into choicequestion values(null,'��Java��Ҫ����ͼ�ν������ƣ�ͨ����ʹ�õ�','java.applet��','java.io��','java.awt��','java.lang��','java.awt��',2);
insert into choicequestion values(null,'���������������ı���SWING���','Jcompone','JtextField','Object','JtextArea','JtextArea',2);
insert into choicequestion values(null,'���е�Ĭ�����͵�RESULTSET����RS����ô�����һ�����ݵ���ȷ����ǣ���','rs.next()','rs.nextRow()','rs.nextNex()','rs.getNextRow()','rs.next()',2);
insert into choicequestion values(null,'��������ͼ�ҵ�һ���ܹ�������URL��ָ�������ݿ����������','DrverManager','Connection','PreparedStatement','CalledStatement','DrverManager',2);
insert into choicequestion values(null,'JDBCʹ��SQL���������ݿ�����ʱ�����Ǳ��벶���쳣�ġ�','EOFException','SQLExcepion','InterruptedExcepion','ArithmeticExcepton','SQLExcepion',2);
insert into choicequestion values(null,'paint()����ʹ���������͵Ĳ���?','Graphics','Graphics2D','String','Color','Graphics',2);

insert into choicequestion values(null,'()��JFRAME�����Ĭ�ϲ��ֹ�����','null','BorderLayout','FlowLayout','���񲼾�','FlowLayout',3);
insert into choicequestion values(null,'����˵���������ǲ���ȷ�ġ�','Swing ����AWT�Ļ����Ϸ�չ������','Swing �Ǵ�Java����������������','Swing ��API�ڰ�javax.swing��','Swing �����������ĸ��S����ͷ��','Swing �����������ĸ��S����ͷ��',3);
insert into choicequestion values(null,'()�������κ�ʱ����һ��ѡ����ֻѡ��һ��ѡ�','JTextArea','Jbutton','JCheckBox','JRadioButton','JRadioButton',3);
insert into choicequestion values(null,'�� ����һ��ר���������������������������п�ѡ�Ĵ�ֱ��ˮƽ��������','Jframe','Jscrollpane','Jpanel','JtextArea','Jpanel',3);
insert into choicequestion values(null,'������Swing�г�������Ӧ�ó�����Ķ���������','JcomboBox','JtextField','Jbutton','Jframe','Jframe',3);
insert into choicequestion values(null,'�����Ƕ�JOPIONPANE�����Ч���췽��������','Jopoinpane','Jopionpane(String message)','Jopionpane(int message)',' Jopionpane(Object message,Object message Type)','Jopionpane(String message)',3);
insert into choicequestion values(null,'���������ڴ����˵��','JMenuItem','JPopupMenu','Jmenu','JMenuBar','JMenuItem',3);
insert into choicequestion values(null,'���²˵����У��� ���Ǹ��ࡣ','JcheckBoxMenuItem','JradioButtonMenuItem','Jmenu','JmenuItem','Jmenu',3);
insert into choicequestion values(null,'��������ִ��SQL��䲢�����ݼ�����ResultSet�С�','Satement','Connection','CalledStatement','ResultSet','Satement',3);
insert into choicequestion values(null,'�������ڱ������ݿ��ѯ�Ľ����','Connection','Statement','PreparedStatement','ResultSet','ResultSet',3);




