/*
Navicat MySQL Data Transfer

Source Server         : nick
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : ctplatform

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2017-04-27 20:38:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `choicequestion`
-- ----------------------------
DROP TABLE IF EXISTS `choicequestion`;
CREATE TABLE `choicequestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choicequestion
-- ----------------------------
INSERT INTO `choicequestion` VALUES ('1', '下面（）是JDK中的Java运行工具。', 'javax', 'javam', 'java', 'javar', 'java', '1');
INSERT INTO `choicequestion` VALUES ('2', '在屏幕上显示的信息的正确的语句是（）', 'System.out.println(\"I am Java Expert\");', 'system.out.println(\"I am Java Expert\");', '.System.Out.Println(\"I am Java Expert\");', 'System.out.println(I am Java Expert)', 'System.out.println(\"I am Java Expert\");', '1');
INSERT INTO `choicequestion` VALUES ('3', 'Java编译器会将Java程序转换为 （）', '字节码', '可执行代码', '机器代码', '以上都不正确', '字节码', '1');
INSERT INTO `choicequestion` VALUES ('4', '在JAVA中，byte数据类型的范围是（）', '-32767 ~ 32768', '-32768 ~ 32767', '-127 ~ 128', '-128 ~ 127', '-128 ~ 127', '1');
INSERT INTO `choicequestion` VALUES ('5', '下面（）数据类型可用于MAIN（）中传递参数', 'String', 'Integer', 'Boolean', 'Variant', 'String', '1');
INSERT INTO `choicequestion` VALUES ('6', '选出JAVA中有效的注释声明（）', '// this is a comment', '*/this is comment', '/this is a comment', '/*this is a comment*/', '/*this is a comment*/', '1');
INSERT INTO `choicequestion` VALUES ('7', '如果类的方法没有返回值，该方法的返回类型是（）', 'null', 'void', 'static', 'public', 'void', '1');
INSERT INTO `choicequestion` VALUES ('8', '每个类定义有（），以便初始化其成员', '方法', 'MAIN（）方法', '构造方法', '对象', '构造方法', '1');
INSERT INTO `choicequestion` VALUES ('9', '类的（）成员只能被该类的成员访问，而不能被非该类的成员访问。', 'public', 'private', 'protected', 'abstract', 'private', '1');
INSERT INTO `choicequestion` VALUES ('10', '不论测试条件是什么，下列（）循环将至少循环一次。', 'while', 'do-while', 'for', 'for-each', 'do-while', '1');
INSERT INTO `choicequestion` VALUES ('11', '（）修饰符不允许父类被继承', 'abstract', 'static', 'protected', 'final', 'abstract', '1');
INSERT INTO `choicequestion` VALUES ('12', '（）是拥有属性和性为或方法的实体。', '对象', '类', '方法', '构造方法', '对象', '1');
INSERT INTO `choicequestion` VALUES ('13', '（）术语常常用来指代父类', 'Parent', 'Child', 'Superclass', 'Supclass', 'Parent', '1');
INSERT INTO `choicequestion` VALUES ('14', '（）就是检验有关某个实体的所有可用信息的过程，以便标识与应用程序相关的信息。', '抽象', '封装', '方法', '构造方法', '抽象', '1');
INSERT INTO `choicequestion` VALUES ('15', ' 在Java中，当在类中定义两个或多个方法，它们有相同的名称而参数项不同时，这称为（ ）', '继承', '多态性', '构造方法', '方法重载', '方法重载', '1');
INSERT INTO `choicequestion` VALUES ('16', '（）关键字表示它是一种类方法，且无需创建对象即可访问。', 'void', 'static', 'return', 'public', 'static', '1');
INSERT INTO `choicequestion` VALUES ('17', '()修饰符允许对类成员的访问不依赖于该类的任何对象。', 'abstract', 'static', 'return', 'public', 'static', '1');
INSERT INTO `choicequestion` VALUES ('18', '对象的特性在类中表示为变量，称为类的（ ）。', '对象', '属性', '方法', '数据类型', '属性', '1');
INSERT INTO `choicequestion` VALUES ('19', '以下关键字（ ）用于终止循环语句。', 'break', 'exit', 'end', 'terminate', 'break', '1');
INSERT INTO `choicequestion` VALUES ('20', 'JAVA.LANG包的（）方法将比较两个对象是否相等，如果相等则返回TRUE。', 'toString()', 'compare()', 'equals()', '以上所有选项都不对', 'equals()', '1');
INSERT INTO `choicequestion` VALUES ('21', '（）就是检验有关某个实体的所有可用信息的过程，以便标识与应用程序相关的信息。', '抽象', '封装', '方法', '构造方法', '抽象', '2');
INSERT INTO `choicequestion` VALUES ('22', '（ ）是Throwsble类 父类。', 'Exception', 'Error', 'Object', 'RuntimeException', 'Object', '2');
INSERT INTO `choicequestion` VALUES ('23', '能单独和finally语句一起使用的快是( )', 'try', 'catch', 'throw', 'throws', 'try', '2');
INSERT INTO `choicequestion` VALUES ('24', '下列类中多重CATCH中同时使用，（）异常类应该最后列出', 'ArithmeticExcepion', 'NumberFormatExcepion', 'Excepion', 'ArrayIndexOutOfBoundsException', 'Excepion', '2');
INSERT INTO `choicequestion` VALUES ('25', 'Throwable类(  )的方法用于有关错误的详细消息。', 'getMessage( )', 'tostring( )', ' message( )', 'getOutput( )', 'getMessage( )', '2');
INSERT INTO `choicequestion` VALUES ('26', '是用（）方法可以获取Calender实例。', 'get( )', 'getInstance( )', 'equals( )', 'getTime( )', 'getInstance( )', '2');
INSERT INTO `choicequestion` VALUES ('27', '（）文件保存CLASS JAVADOC FIELDS', '.html文件', '.jpx文件', '.class文件', '.java文件', '.class文件', '2');
INSERT INTO `choicequestion` VALUES ('28', '（）存储对错误的描述。', '消息窗格', '工程窗格', '内容窗格', '结构窗格', '消息窗格', '2');
INSERT INTO `choicequestion` VALUES ('29', '在Java中要进行图形界面的设计，通常会使用到', 'java.applet包', 'java.io包', 'java.awt包', 'java.lang包', 'java.awt包', '2');
INSERT INTO `choicequestion` VALUES ('30', '（）是用来生成文本框SWING组件', 'Jcompone', 'JtextField', 'Object', 'JtextArea', 'JtextArea', '2');
INSERT INTO `choicequestion` VALUES ('31', '现有的默认类型的RESULTSET对象RS，那么获得下一行数据的正确语句是（）', 'rs.next()', 'rs.nextRow()', 'rs.nextNex()', 'rs.getNextRow()', 'rs.next()', '2');
INSERT INTO `choicequestion` VALUES ('32', '（）类试图找到一个能够连接至URL中指定的数据库的驱动程序', 'DrverManager', 'Connection', 'PreparedStatement', 'CalledStatement', 'DrverManager', '2');
INSERT INTO `choicequestion` VALUES ('33', 'JDBC使用SQL语句操作数据库数据时（）是必须捕获异常的。', 'EOFException', 'SQLExcepion', 'InterruptedExcepion', 'ArithmeticExcepton', 'SQLExcepion', '2');
INSERT INTO `choicequestion` VALUES ('34', 'paint()方法使用哪种类型的参数?', 'Graphics', 'Graphics2D', 'String', 'Color', 'Graphics', '2');
INSERT INTO `choicequestion` VALUES ('35', '()是JFRAME组件的默认布局管理器', 'null', 'BorderLayout', 'FlowLayout', '网格布局', 'FlowLayout', '3');
INSERT INTO `choicequestion` VALUES ('36', '下列说法，（）是不正确的。', 'Swing 是在AWT的基础上发展起来的', 'Swing 是纯Java组件，是轻量级组件', 'Swing 的API在包javax.swing中', 'Swing 组件都是以字母“S”打头的', 'Swing 组件都是以字母“S”打头的', '3');
INSERT INTO `choicequestion` VALUES ('37', '()允许在任何时间点从一组选项中只选择一个选项。', 'JTextArea', 'Jbutton', 'JCheckBox', 'JRadioButton', 'JRadioButton', '3');
INSERT INTO `choicequestion` VALUES ('38', '（ ）是一个专用容器，该容器管理视区，具有可选的垂直和水平滚动条。', 'Jframe', 'Jscrollpane', 'Jpanel', 'JtextArea', 'Jpanel', '3');
INSERT INTO `choicequestion` VALUES ('39', '（）是Swing中常用生成应用程序窗体的顶层容器。', 'JcomboBox', 'JtextField', 'Jbutton', 'Jframe', 'Jframe', '3');
INSERT INTO `choicequestion` VALUES ('40', '（）是对JOPIONPANE类的有效构造方法的声明', 'Jopoinpane', 'Jopionpane(String message)', 'Jopionpane(int message)', ' Jopionpane(Object message,Object message Type)', 'Jopionpane(String message)', '3');
INSERT INTO `choicequestion` VALUES ('41', '（）类用于创建菜单项。', 'JMenuItem', 'JPopupMenu', 'Jmenu', 'JMenuBar', 'JMenuItem', '3');
INSERT INTO `choicequestion` VALUES ('42', '以下菜单类中，（ ）是父类。', 'JcheckBoxMenuItem', 'JradioButtonMenuItem', 'Jmenu', 'JmenuItem', 'Jmenu', '3');
INSERT INTO `choicequestion` VALUES ('43', '（）用于执行SQL语句并将数据检索到ResultSet中。', 'Satement', 'Connection', 'CalledStatement', 'ResultSet', 'Satement', '3');
INSERT INTO `choicequestion` VALUES ('44', '（）用于保存数据库查询的结果集', 'Connection', 'Statement', 'PreparedStatement', 'ResultSet', 'ResultSet', '3');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_number` varchar(20) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `teacher` varchar(20) NOT NULL,
  `info` varchar(500) DEFAULT NULL,
  `courseType` int(11) NOT NULL,
  `deliver` varchar(20) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2', '002', 'MVC结构解析', 'kevin', '论文首先简要电子商务、电子商务网站，分析了电子商务网站的实现技术，包括客户端技术、Web服务器端技术和网络数据库技术。然后论文讨论了网上商店的构成，介绍了前台系统、后台系统的功能，及前台顾客操作流程、会员操作流程、后台管理流程及完整的购物流程。', '1', null, null, null);
INSERT INTO `course` VALUES ('3', '003', '数据结构', 'KevinPlatform', '论文研究电子商务网站的设计与实现，并采用JSP动态网页技术实现了一个小型电子商务网站即网上书店。论文首先简要介绍了电子商务及其实现技术，网上商店的构成及主要流程；然后详细介绍了网上书店的需求分析和系统设计，并给出了网上书店的JSP实现方案及技术细节，包括运行环境的配置、数据库建立及各个功能模块的JSP实现细节等。网上商店实现了基本的前台功能和后台管理功能。', '1', null, null, null);
INSERT INTO `course` VALUES ('4', '004', '操作系统', 'jack', 'h the technological dandwebsites.', '2', null, null, null);
INSERT INTO `course` VALUES ('5', '005', 'ASP编程', 'jack', '图内文字五号宋体；图的标题应处于图片下下方，并居中', '2', null, null, null);
INSERT INTO `course` VALUES ('7', '007', 'JAVA编程', '凯文', 'JSP has great advantage on implementation active websites, it worthy for further learning and researching.', '2', null, null, null);
INSERT INTO `course` VALUES ('8', '008', 'C++', 'kevin', 'Tieg enrionment, the creation of databases, and the implementation details of', '3', null, null, null);
INSERT INTO `course` VALUES ('9', '009', '数字逻辑与系统', 'tom', '从系统的体系结构上看，电子商务网站一般采用三层的浏览器/服务器（Browser/Server，B/S）结构，整个电子商务网站主要由浏览器、Web服务器和数据库服务器三个部分组成。', '3', null, null, null);
INSERT INTO `course` VALUES ('10', '010', 'PHP编程习惯', 'kevin', '数据库的概念结构设计完毕后，就可以将上面的概念结构转化为某种数据库系统所支持的实际数据模型，也就是数据库的逻辑结构。', '3', null, null, null);
INSERT INTO `course` VALUES ('11', '011', 'EJB详细介绍', '天赋天使', '本系统采用的技术方案为JSP +Tomcat+ Access，即使用JSP作为Web服务器端开发语言，采用Tomcat作为Web服务器和JSP引擎，采用Access作为后台网络数据库管理系统。', '3', null, null, null);
INSERT INTO `course` VALUES ('12', '012', 'suanfa', 'zhanglaoshi', 'jlaj', '1', 'admin', 'aaa.mp4', '2017-04-24 18:16:48');
INSERT INTO `course` VALUES ('13', '013', '算法分析', '张', '雪系', '1', 'admin', 'Beautiful 完整版--音悦Tai.mp4', '2017-04-24 18:21:16');
INSERT INTO `course` VALUES ('14', '012', '算法', '啊', '阿德', '1', 'admin', 'Alone 中文字幕版--音悦Tai.mp4', '2017-04-24 18:41:50');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `mdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '新的课程', '请添加部分新课程呢', '2017-04-23 11:34:42');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `ndate` datetime DEFAULT NULL,
  `deliver` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('2', '期末考试快到了,同学们加油!', '期末考试快到了,同学们加油!期末考试快到了,同学们加油!期末考试快到了,同学们加油!', '2017-04-22 15:41:57', 'KevinPlatform');
INSERT INTO `news` VALUES ('3', 'C/C++程序设计》', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('4', '课程设计', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('5', '毕业设计', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('6', '找工作', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('7', '天津经济开发区', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('8', '天津花苑产业园', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('9', 'IBM服务', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('10', 'KevinPlatform', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('11', 'KevinPlatform设计', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) DEFAULT NULL,
  `notice_content` varchar(500) DEFAULT NULL,
  `notice_date` datetime DEFAULT NULL,
  `notice_deliver` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '精品课程', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('2', '期末考试', '期末考试快到了,同学们加油!期末考试快到了,同学们加油!期末考试快到了,同学们加油!', '2017-04-22 15:42:16', 'KevinPlatform');
INSERT INTO `notice` VALUES ('3', '程序设计', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('4', '课程', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('5', '毕业', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('6', '工作', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('7', '经济开发区', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('8', '花苑产业园', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('9', '服务', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('10', 'Kevin', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('11', 'Platform设计', '喜报：《C/C++程序设计》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_number` varchar(20) NOT NULL,
  `score_sgrade` double DEFAULT NULL,
  `testpaperno` varchar(20) DEFAULT NULL,
  `validation` int(11) DEFAULT NULL,
  PRIMARY KEY (`score_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------

-- ----------------------------
-- Table structure for `scoresimple`
-- ----------------------------
DROP TABLE IF EXISTS `scoresimple`;
CREATE TABLE `scoresimple` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `score_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scoresimple
-- ----------------------------

-- ----------------------------
-- Table structure for `simplequestion`
-- ----------------------------
DROP TABLE IF EXISTS `simplequestion`;
CREATE TABLE `simplequestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simplequestion
-- ----------------------------
INSERT INTO `simplequestion` VALUES ('1', 'C++或Java中的异常处理机制的简单原理和应用', '当JAVA程序违反了JAVA的语义规则时，JAVA虚拟机就会将发生的错误表示为一个异常。违反语义规则包括2种情况。一种是JAVA类库内置的语义检查。例如数组下标越界,会引发IndexOutOfBoundsException;访问null的对象时会引发NullPointerException。另一种情况就是JAVA允许程序员扩展这种语义检查，程序员可以创建自己的异常，并自由选择在何时用throw关键字引发异常。所有的异常都是java.lang.Thowable的子类。', '1');
INSERT INTO `simplequestion` VALUES ('2', 'Java的接口和C++的虚类的相同和不同处。', '由于Java不支持多继承，而有可能某个类或对象要使用分别在几个类或对象里面的方法或属性，现有的单继承机制就不能满足要求。与继承相比，接口有更高的灵活性，因为接口中没有任何实现代码。当一个类实现了接口以后，该类要实现接口里面所有的方法和属性，并且接口里面的属性在默认状态下面都是public static,所有方法默认情况下是public.一个类可以实现多个接口。', '1');
INSERT INTO `simplequestion` VALUES ('3', 'Error与Exception有什么区别？', 'Error表示系统级的错误和程序不必处理的异常，Exception表示需要捕捉或者需要程序进行处理的异常。', '1');
INSERT INTO `simplequestion` VALUES ('4', '在java中一个类被声明为final类型，表示了什么意思?', '表示该类不能被继承，是顶级类。', '1');
INSERT INTO `simplequestion` VALUES ('5', 'heap和stack有什么区别?', '栈是一种线形集合，其添加和删除元素的操作应在同一段完成。栈按照后进先出的方式进行处理。堆是栈的一个组成元素', '1');
INSERT INTO `simplequestion` VALUES ('6', 'Anonymous Inner Class (匿名内部类) 是否可以extends(继承)其它类，是否可以implements(实现)interface(接口)? ', '匿名的内部类是没有名字的内部类。不能extends(继承) 其它类，但一个内部类可以作为一个接口，由另一个内部类实现。', '1');
INSERT INTO `simplequestion` VALUES ('7', 'Static Nested Class 和 Inner Class的不同，说得越多越好(面试题有的很笼统)。', 'Nested Class （一般是C++的说法），Inner Class (一般是JAVA的说法)。Java内部类与C++嵌套类最大的不同就在于是否有指向外部的引用上。具体可见http: //www.frontfree.net/articles/services/view.asp?id=704&page=1 注： 静态内部类（Inner Class）意味着1创建一个static内部类的对象，不需要一个外部类对象，2不能从一个static内部类的一个对象访问一个外部类对象', '1');
INSERT INTO `simplequestion` VALUES ('8', '&和&&的区别', '&是位运算符。&&是布尔逻辑运算符。 ', '1');
INSERT INTO `simplequestion` VALUES ('9', 'HashMap和Hashtable的区别', '都属于Map接口的类，实现了将惟一键映射到特定的值上。HashMap 类没有分类或者排序。它允许一个 null 键和多个 null 值。Hashtable 类似于 HashMap，但是不允许 null 键和 null 值。它也比 HashMap 慢，因为它是同步的。', '1');
INSERT INTO `simplequestion` VALUES ('10', 'Collection 和 Collections的区别。', 'Collections是个java.util下的类，它包含有各种有关集合操作的静态方法。Collection是个java.util下的接口，它是各种集合结构的父接口。', '1');
INSERT INTO `simplequestion` VALUES ('11', 'GC是什么? 为什么要有GC?', 'GC是垃圾收集器。Java 程序员不用担心内存管理，因为垃圾收集器会自动进行管理。要请求垃圾收集，可以调用下面的方法之一：System.gc() ,Runtime.getRuntime().gc() ', '2');
INSERT INTO `simplequestion` VALUES ('12', 'String s = new String(\"xyz\");创建了几个String Object? ', '两个对象，一个是“xyx”,一个是指向“xyx”的引用对象s。', '2');
INSERT INTO `simplequestion` VALUES ('13', 'sleep() 和 wait() 有什么区别? 搞线程的最爱', 'sleep()方法是使线程停止一段时间的方法。在sleep 时间间隔期满后，线程不一定立即恢复执行。这是因为在那个时刻，其它线程可能正在运行而且没有被调度为放弃执行，除非(a)“醒来”的线程具有更高的优先级 (b)正在运行的线程因为其它原因而阻塞。wait()是线程交互时，如果线程对一个同步对象x 发出一个wait()调用，该线程会暂停执行，被调对象进入等待状态，直到被唤醒或等待时间到。', '2');
INSERT INTO `simplequestion` VALUES ('14', '数组有没有length()这个方法? String有没有length()这个方法？', '数组没有length()这个方法，有length的属性。String有有length()这个方法。 ', '2');
INSERT INTO `simplequestion` VALUES ('15', 'Overload和Override的区别。Overloaded的方法是否可以改变返回值的类型?', '方法的重写Overriding和重载Overloading是Java多态性的不同表现。重写Overriding是父类与子类之间多态性的一种表现，重载Overloading是一个类中多态性的一种表现。如果在子类中定义某方法与其父类有相同的名称和参数，我们说该方法被重写 (Overriding)。子类的对象使用这个方法时，将调用子类中的定义，对它而言，父类中的定义如同被“屏蔽”了。如果在一个类中定义了多个同名的方法，它们或有不同的参数个数或有不同的参数类型，则称为方法的重载(Overloading)。Overloaded的方法是可以改变返回值的类型。', '2');
INSERT INTO `simplequestion` VALUES ('16', 'Set里的元素是不能重复的，那么用什么方法来区分重复与否呢? 是用==还是equals()? 它们有何区别? ', 'Set里的元素是不能重复的，那么用iterator()方法来区分重复与否。equals()是判读两个Set是否相等。equals()和==方法决定引用值是否指向同一对象equals()在类中被覆盖，为的是当两个分离的对象的内容和类型相配的话，返回真值。', '2');
INSERT INTO `simplequestion` VALUES ('17', '接口是否可继承接口? 抽象类是否可实现(implements)接口? 抽象类是否可继承实体类(concrete class)? ', '接口可以继承接口。抽象类可以实现(implements)接口，抽象类是否可继承实体类，但前提是实体类必须有明确的构造函数。', '2');
INSERT INTO `simplequestion` VALUES ('18', '当一个对象被当作参数传递到一个方法后，此方法可改变这个对象的属性，并可返回变化后的结果，那么这里到底是值传递还是引用传递? ', '是值传递。Java 编程语言只由值传递参数。当一个对象实例作为一个参数被传递到方法中时，参数的值就是对该对象的引用。对象的内容可以在被调用的方法中改变，但对象的引用是永远不会改变的。', '2');
INSERT INTO `simplequestion` VALUES ('19', 'swtich是否能作用在byte上，是否能作用在long上，是否能作用在String上?', 'switch（expr1）中，expr1是一个整数表达式。因此传递给 switch 和 case 语句的参数应该是 int、 short、 char 或者 byte。long,string 都不能作用于swtich。', '2');
INSERT INTO `simplequestion` VALUES ('20', 'char型变量中能不能存贮一个中文汉字?为什么? ', '是能够定义成为一个中文的，因为java中以unicode编码，一个char占16个字节，所以放一个中文是没问题的', '2');
INSERT INTO `simplequestion` VALUES ('21', 'jsp有哪些内置对象?作用分别是什么?', 'JSP共有以下9种基本内置组件： request 用户端请求，此请求会包含来自GET/POST请求的参数， response 网页传回用户端的回应 ，pageContext 网页的属性是在这里管理， session 与请求有关的会话期 ，application servlet 正在执行的内容， out 用来传送回应的输出， config servlet的构架部件 page JSP网页本身， exception 针对错误网页，未捕捉的例外 ', '3');
INSERT INTO `simplequestion` VALUES ('22', 'JSP中动态INCLUDE与静态INCLUDE的区别？', '动态INCLUDE用jsp:include动作实现 <jsp:include page=\"included.jsp\" flush=\"true\" />它总是会检查所含文件中的变化，适合用于包含动态页面，并且可以带参数。静态INCLUDE用include伪码实现,定不会检查所含文件的变化，适用于包含静态页面 <%@ include file=\"included.htm\" %>', '3');
INSERT INTO `simplequestion` VALUES ('23', '说一说Servlet的生命周期?', 'servlet有良好的生存期的定义，包括加载和实例化、初始化、处理请求以及服务结束。这个生存期由javax.servlet.Servlet接口的init,service和destroy方法表达。', '3');
INSERT INTO `simplequestion` VALUES ('24', 'JAVA SERVLET API中forward() 与redirect()的区别？', '前者仅是容器中控制权的转向，在客户端浏览器地址栏中不会显示出转向后的地址；后者则是完全的跳转，浏览器将会得到跳转的地址，并重新发送请求链接。这样，从浏览器的地址栏中可以看到跳转后的链接地址。所以，前者更加高效，在前者可以满足需要时，尽量使用forward()方法，并且，这样也有助于隐藏实际的链接。在有些情况下，比如，需要跳转到一个其它服务器上的资源，则必须使用sendRedirect()方法。', '3');
INSERT INTO `simplequestion` VALUES ('25', '你在项目中用到了xml技术的哪些方面?如何实现的? ', '用到了数据存贮，信息配置两方面。在做数据交换平台时，将不能数据源的数据组装成XML文件，然后将XML文件压缩打包加密后通过网络传送给接收者，接收解密与解压缩后再同XML文件中还原相关信息进行处理。在做软件配置时，利用XML可以很方便的进行，软件的各种配置参数都存贮在XML文件中。', '3');
INSERT INTO `simplequestion` VALUES ('26', 'EJB2.0有哪些内容?分别用在什么场合? EJB2.0和EJB1.1的区别?', '规范内容包括Bean提供者，应用程序装配者，EJB容器，EJB配置工具，EJB服务提供者，系统管理员。这里面，EJB容器是EJB之所以能够运行的核心。EJB容器管理着EJB的创建，撤消，激活，去活，与数据库的连接等等重要的核心工作。JSP,Servlet,EJB,JNDI,JDBC,JMS..... ', '3');
INSERT INTO `simplequestion` VALUES ('27', 'MVC的各个部分都有那些技术来实现?如何实现? ', 'MVC是Model－View－Controller的简写。\"Model\" 代表的是应用的业务逻辑（通过JavaBean，EJB组件实现）， \"View\" 是应用的表示面（由JSP页面产生），\"Controller\" 是提供应用的处理过程控制（一般是一个Servlet），通过这种设计模型把应用逻辑，处理过程和显示逻辑分成不同的组件实现。这些组件可以进行交互和重用。', '3');
INSERT INTO `simplequestion` VALUES ('28', '开发中都用到了那些设计模式?用在什么场合? ', '每个模式都描述了一个在我们的环境中不断出现的问题，然后描述了该问题的解决方案的核心。通过这种方式，你可以无数次地使用那些已有的解决方案，无需在重复相同的工作。主要用到了MVC的设计模式。用来开发JSP/Servlet或者J2EE的相关应用。简单工厂模式等。', '3');
INSERT INTO `simplequestion` VALUES ('29', '说出ArrayList,Vector, LinkedList的存储性能和特性', 'ArrayList和Vector都是使用数组方式存储数据，此数组元素数大于实际存储的数据以便增加和插入元素，它们都允许直接按序号索引元素，但是插入元素要涉及数组元素移动等内存操作，所以索引数据快而插入数据慢，Vector由于使用了synchronized方法（线程安全），通常性能上较ArrayList差，而LinkedList使用双向链表实现存储，按序号索引数据需要进行前向或后向遍历，但是插入数据时只需要记录本项的前后项即可，所以插入速度较快。', '3');
INSERT INTO `simplequestion` VALUES ('30', '存储过程和函数的区别', '存储过程是用户定义的一系列sql语句的集合，涉及特定表或其它对象的任务，用户可以调用存储过程，而函数通常是数据库已定义的方法，它接收参数并返回某种类型的值并且不涉及特定用户表。', '3');

-- ----------------------------
-- Table structure for `sourcefile`
-- ----------------------------
DROP TABLE IF EXISTS `sourcefile`;
CREATE TABLE `sourcefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) DEFAULT NULL,
  `filedeliver` varchar(50) DEFAULT NULL,
  `filedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sourcefile
-- ----------------------------
INSERT INTO `sourcefile` VALUES ('17', '【HYL】李连杰电影全集【精武英雄】国语版.flv', 'admin', '2017-04-22 23:28:58');
INSERT INTO `sourcefile` VALUES ('18', 'Alone 中文字幕版--音悦Tai.mp4', 'admin', '2017-04-22 23:40:24');
INSERT INTO `sourcefile` VALUES ('19', '', '', '2017-04-24 13:58:13');
INSERT INTO `sourcefile` VALUES ('20', '', 'null', '2017-04-24 16:16:34');
INSERT INTO `sourcefile` VALUES ('21', '1110_元若蓝_绿袖子.rmvb.flv', 'admin', '2017-04-24 16:32:28');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_number` varchar(20) NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `student_sex` varchar(10) DEFAULT NULL,
  `student_class` varchar(20) DEFAULT NULL,
  `student_grade` float DEFAULT NULL,
  `student_testno` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20050001', '20050001', '男', '计算机二班', null, null, '20050001');

-- ----------------------------
-- Table structure for `studentscore`
-- ----------------------------
DROP TABLE IF EXISTS `studentscore`;
CREATE TABLE `studentscore` (
  `ssnumber` varchar(50) NOT NULL,
  `ssscore` double DEFAULT NULL,
  PRIMARY KEY (`ssnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentscore
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_number` varchar(20) NOT NULL,
  `teacher_name` varchar(20) DEFAULT NULL,
  `teacher_course` varchar(50) DEFAULT NULL,
  `teacher_studentno` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`teacher_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2013020121', '梁建勇', '算法分析 ', null, '784776550@qq.com');

-- ----------------------------
-- Table structure for `testpaper`
-- ----------------------------
DROP TABLE IF EXISTS `testpaper`;
CREATE TABLE `testpaper` (
  `peapernumber` varchar(50) NOT NULL,
  `selectEasy` int(11) DEFAULT NULL,
  `selectNormal` int(11) DEFAULT NULL,
  `selectDifficulty` int(11) DEFAULT NULL,
  `simpleEasy` int(11) DEFAULT NULL,
  `simpleNormal` int(11) DEFAULT NULL,
  `simpleDifficulty` int(11) DEFAULT NULL,
  `selectScore` double DEFAULT NULL,
  `simpleScore` double DEFAULT NULL,
  PRIMARY KEY (`peapernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testpaper
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `userpassword` varchar(20) DEFAULT NULL,
  `userclass` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20050001', '20050001', '1', '20050001');
INSERT INTO `user` VALUES ('2013020121', '2013020121', '2', '784776550@qq.com');
INSERT INTO `user` VALUES ('wuguangyuan', 'wuguangyuan', '3', 'wuguangyuan757@sina.com');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) NOT NULL COMMENT '视频名称',
  `src` varchar(200) NOT NULL COMMENT '视频存放地址',
  `picture` varchar(200) NOT NULL COMMENT '视频截图',
  `descript` varchar(400) DEFAULT NULL COMMENT '视频描述',
  `uptime` varchar(40) DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
