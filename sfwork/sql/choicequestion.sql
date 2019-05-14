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


insert into choicequestion values(null,'下面（）是JDK中的Java运行工具。','javax','javam','java','javar','java',1);
insert into choicequestion values(null,'在屏幕上显示的信息的正确的语句是（）','System.out.println("I am Java Expert");','system.out.println("I am Java Expert");','.System.Out.Println("I am Java Expert");','System.out.println(I am Java Expert)','System.out.println("I am Java Expert");',1);
insert into choicequestion values(null,'Java编译器会将Java程序转换为 （）','字节码','可执行代码','机器代码','以上都不正确','字节码',1);
insert into choicequestion values(null,'在JAVA中，byte数据类型的范围是（）','-32767 ~ 32768','-32768 ~ 32767','-127 ~ 128','-128 ~ 127','-128 ~ 127',1);
insert into choicequestion values(null,'下面（）数据类型可用于MAIN（）中传递参数','String','Integer','Boolean','Variant','String',1);
insert into choicequestion values(null,'选出JAVA中有效的注释声明（）','// this is a comment','*/this is comment','/this is a comment','/*this is a comment*/','/*this is a comment*/',1);
insert into choicequestion values(null,'如果类的方法没有返回值，该方法的返回类型是（）','null','void','static','public','void',1);
insert into choicequestion values(null,'每个类定义有（），以便初始化其成员','方法','MAIN（）方法','构造方法','对象','构造方法',1);
insert into choicequestion values(null,'类的（）成员只能被该类的成员访问，而不能被非该类的成员访问。','public','private','protected','abstract','private',1);
insert into choicequestion values(null,'不论测试条件是什么，下列（）循环将至少循环一次。','while','do-while','for','for-each','do-while',1);
insert into choicequestion values(null,'（）修饰符不允许父类被继承','abstract','static','protected','final','abstract',1);
insert into choicequestion values(null,'（）是拥有属性和性为或方法的实体。','对象','类','方法','构造方法','对象',1);
insert into choicequestion values(null,'（）术语常常用来指代父类','Parent','Child','Superclass','Supclass','Parent',1);
insert into choicequestion values(null,'（）就是检验有关某个实体的所有可用信息的过程，以便标识与应用程序相关的信息。','抽象','封装','方法','构造方法','抽象',1);
insert into choicequestion values(null,' 在Java中，当在类中定义两个或多个方法，它们有相同的名称而参数项不同时，这称为（ ）','继承','多态性','构造方法','方法重载','方法重载',1);
insert into choicequestion values(null,'（）关键字表示它是一种类方法，且无需创建对象即可访问。','void','static','return','public','static',1);
insert into choicequestion values(null,'()修饰符允许对类成员的访问不依赖于该类的任何对象。','abstract','static','return','public','static',1);
insert into choicequestion values(null,'对象的特性在类中表示为变量，称为类的（ ）。','对象','属性','方法','数据类型','属性',1);
insert into choicequestion values(null,'以下关键字（ ）用于终止循环语句。','break','exit','end','terminate','break',1);
insert into choicequestion values(null,'JAVA.LANG包的（）方法将比较两个对象是否相等，如果相等则返回TRUE。','toString()','compare()','equals()','以上所有选项都不对','equals()',1);


insert into choicequestion values(null,'（）就是检验有关某个实体的所有可用信息的过程，以便标识与应用程序相关的信息。','抽象','封装','方法','构造方法','抽象',2);
insert into choicequestion values(null,'（ ）是Throwsble类 父类。','Exception','Error','Object','RuntimeException','Object',2);
insert into choicequestion values(null,'能单独和finally语句一起使用的快是( )','try','catch','throw','throws','try',2);
insert into choicequestion values(null,'下列类中多重CATCH中同时使用，（）异常类应该最后列出','ArithmeticExcepion','NumberFormatExcepion','Excepion','ArrayIndexOutOfBoundsException','Excepion',2);
insert into choicequestion values(null,'Throwable类(  )的方法用于有关错误的详细消息。','getMessage( )','tostring( )',' message( )','getOutput( )','getMessage( )',2);
insert into choicequestion values(null,'是用（）方法可以获取Calender实例。','get( )','getInstance( )','equals( )','getTime( )','getInstance( )',2);
insert into choicequestion values(null,'（）文件保存CLASS JAVADOC FIELDS','.html文件','.jpx文件','.class文件','.java文件','.class文件',2);
insert into choicequestion values(null,'（）存储对错误的描述。','消息窗格','工程窗格','内容窗格','结构窗格','消息窗格',2);
insert into choicequestion values(null,'在Java中要进行图形界面的设计，通常会使用到','java.applet包','java.io包','java.awt包','java.lang包','java.awt包',2);
insert into choicequestion values(null,'（）是用来生成文本框SWING组件','Jcompone','JtextField','Object','JtextArea','JtextArea',2);
insert into choicequestion values(null,'现有的默认类型的RESULTSET对象RS，那么获得下一行数据的正确语句是（）','rs.next()','rs.nextRow()','rs.nextNex()','rs.getNextRow()','rs.next()',2);
insert into choicequestion values(null,'（）类试图找到一个能够连接至URL中指定的数据库的驱动程序','DrverManager','Connection','PreparedStatement','CalledStatement','DrverManager',2);
insert into choicequestion values(null,'JDBC使用SQL语句操作数据库数据时（）是必须捕获异常的。','EOFException','SQLExcepion','InterruptedExcepion','ArithmeticExcepton','SQLExcepion',2);
insert into choicequestion values(null,'paint()方法使用哪种类型的参数?','Graphics','Graphics2D','String','Color','Graphics',2);

insert into choicequestion values(null,'()是JFRAME组件的默认布局管理器','null','BorderLayout','FlowLayout','网格布局','FlowLayout',3);
insert into choicequestion values(null,'下列说法，（）是不正确的。','Swing 是在AWT的基础上发展起来的','Swing 是纯Java组件，是轻量级组件','Swing 的API在包javax.swing中','Swing 组件都是以字母“S”打头的','Swing 组件都是以字母“S”打头的',3);
insert into choicequestion values(null,'()允许在任何时间点从一组选项中只选择一个选项。','JTextArea','Jbutton','JCheckBox','JRadioButton','JRadioButton',3);
insert into choicequestion values(null,'（ ）是一个专用容器，该容器管理视区，具有可选的垂直和水平滚动条。','Jframe','Jscrollpane','Jpanel','JtextArea','Jpanel',3);
insert into choicequestion values(null,'（）是Swing中常用生成应用程序窗体的顶层容器。','JcomboBox','JtextField','Jbutton','Jframe','Jframe',3);
insert into choicequestion values(null,'（）是对JOPIONPANE类的有效构造方法的声明','Jopoinpane','Jopionpane(String message)','Jopionpane(int message)',' Jopionpane(Object message,Object message Type)','Jopionpane(String message)',3);
insert into choicequestion values(null,'（）类用于创建菜单项。','JMenuItem','JPopupMenu','Jmenu','JMenuBar','JMenuItem',3);
insert into choicequestion values(null,'以下菜单类中，（ ）是父类。','JcheckBoxMenuItem','JradioButtonMenuItem','Jmenu','JmenuItem','Jmenu',3);
insert into choicequestion values(null,'（）用于执行SQL语句并将数据检索到ResultSet中。','Satement','Connection','CalledStatement','ResultSet','Satement',3);
insert into choicequestion values(null,'（）用于保存数据库查询的结果集','Connection','Statement','PreparedStatement','ResultSet','ResultSet',3);




