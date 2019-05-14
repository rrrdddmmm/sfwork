use ctplatform;

create table simplequestion (
	id int primary key auto_increment,
	title varchar(100),
	answer varchar(500),
	difficulty int);
	
insert into simplequestion values (null,'C++或Java中的异常处理机制的简单原理和应用','当JAVA程序违反了JAVA的语义规则时，JAVA虚拟机就会将发生的错误表示为一个异常。违反语义规则包括2种情况。一种是JAVA类库内置的语义检查。例如数组下标越界,会引发IndexOutOfBoundsException;访问null的对象时会引发NullPointerException。另一种情况就是JAVA允许程序员扩展这种语义检查，程序员可以创建自己的异常，并自由选择在何时用throw关键字引发异常。所有的异常都是java.lang.Thowable的子类。',1);
insert into simplequestion values (null,'Java的接口和C++的虚类的相同和不同处。','由于Java不支持多继承，而有可能某个类或对象要使用分别在几个类或对象里面的方法或属性，现有的单继承机制就不能满足要求。与继承相比，接口有更高的灵活性，因为接口中没有任何实现代码。当一个类实现了接口以后，该类要实现接口里面所有的方法和属性，并且接口里面的属性在默认状态下面都是public static,所有方法默认情况下是public.一个类可以实现多个接口。',1);
insert into simplequestion values (null,'Error与Exception有什么区别？','Error表示系统级的错误和程序不必处理的异常，Exception表示需要捕捉或者需要程序进行处理的异常。',1);
insert into simplequestion values (null,'在java中一个类被声明为final类型，表示了什么意思?','表示该类不能被继承，是顶级类。',1);
insert into simplequestion values (null,'heap和stack有什么区别?','栈是一种线形集合，其添加和删除元素的操作应在同一段完成。栈按照后进先出的方式进行处理。堆是栈的一个组成元素',1);
insert into simplequestion values (null,'Anonymous Inner Class (匿名内部类) 是否可以extends(继承)其它类，是否可以implements(实现)interface(接口)? ','匿名的内部类是没有名字的内部类。不能extends(继承) 其它类，但一个内部类可以作为一个接口，由另一个内部类实现。',1);
insert into simplequestion values (null,'Static Nested Class 和 Inner Class的不同，说得越多越好(面试题有的很笼统)。','Nested Class （一般是C++的说法），Inner Class (一般是JAVA的说法)。Java内部类与C++嵌套类最大的不同就在于是否有指向外部的引用上。具体可见http: //www.frontfree.net/articles/services/view.asp?id=704&page=1 注： 静态内部类（Inner Class）意味着1创建一个static内部类的对象，不需要一个外部类对象，2不能从一个static内部类的一个对象访问一个外部类对象',1);
insert into simplequestion values (null,'&和&&的区别','&是位运算符。&&是布尔逻辑运算符。 ',1);
insert into simplequestion values (null,'HashMap和Hashtable的区别','都属于Map接口的类，实现了将惟一键映射到特定的值上。HashMap 类没有分类或者排序。它允许一个 null 键和多个 null 值。Hashtable 类似于 HashMap，但是不允许 null 键和 null 值。它也比 HashMap 慢，因为它是同步的。',1);
insert into simplequestion values (null,'Collection 和 Collections的区别。','Collections是个java.util下的类，它包含有各种有关集合操作的静态方法。Collection是个java.util下的接口，它是各种集合结构的父接口。',1);


insert into simplequestion values (null,'GC是什么? 为什么要有GC?','GC是垃圾收集器。Java 程序员不用担心内存管理，因为垃圾收集器会自动进行管理。要请求垃圾收集，可以调用下面的方法之一：System.gc() ,Runtime.getRuntime().gc() ',2);
insert into simplequestion values (null,'String s = new String("xyz");创建了几个String Object? ','两个对象，一个是“xyx”,一个是指向“xyx”的引用对象s。',2);
insert into simplequestion values (null,'sleep() 和 wait() 有什么区别? 搞线程的最爱','sleep()方法是使线程停止一段时间的方法。在sleep 时间间隔期满后，线程不一定立即恢复执行。这是因为在那个时刻，其它线程可能正在运行而且没有被调度为放弃执行，除非(a)“醒来”的线程具有更高的优先级 (b)正在运行的线程因为其它原因而阻塞。wait()是线程交互时，如果线程对一个同步对象x 发出一个wait()调用，该线程会暂停执行，被调对象进入等待状态，直到被唤醒或等待时间到。',2);
insert into simplequestion values (null,'数组有没有length()这个方法? String有没有length()这个方法？','数组没有length()这个方法，有length的属性。String有有length()这个方法。 ',2);
insert into simplequestion values (null,'Overload和Override的区别。Overloaded的方法是否可以改变返回值的类型?','方法的重写Overriding和重载Overloading是Java多态性的不同表现。重写Overriding是父类与子类之间多态性的一种表现，重载Overloading是一个类中多态性的一种表现。如果在子类中定义某方法与其父类有相同的名称和参数，我们说该方法被重写 (Overriding)。子类的对象使用这个方法时，将调用子类中的定义，对它而言，父类中的定义如同被“屏蔽”了。如果在一个类中定义了多个同名的方法，它们或有不同的参数个数或有不同的参数类型，则称为方法的重载(Overloading)。Overloaded的方法是可以改变返回值的类型。',2);
insert into simplequestion values (null,'Set里的元素是不能重复的，那么用什么方法来区分重复与否呢? 是用==还是equals()? 它们有何区别? ','Set里的元素是不能重复的，那么用iterator()方法来区分重复与否。equals()是判读两个Set是否相等。equals()和==方法决定引用值是否指向同一对象equals()在类中被覆盖，为的是当两个分离的对象的内容和类型相配的话，返回真值。',2);
insert into simplequestion values (null,'接口是否可继承接口? 抽象类是否可实现(implements)接口? 抽象类是否可继承实体类(concrete class)? ','接口可以继承接口。抽象类可以实现(implements)接口，抽象类是否可继承实体类，但前提是实体类必须有明确的构造函数。',2);
insert into simplequestion values (null,'当一个对象被当作参数传递到一个方法后，此方法可改变这个对象的属性，并可返回变化后的结果，那么这里到底是值传递还是引用传递? ','是值传递。Java 编程语言只由值传递参数。当一个对象实例作为一个参数被传递到方法中时，参数的值就是对该对象的引用。对象的内容可以在被调用的方法中改变，但对象的引用是永远不会改变的。',2);
insert into simplequestion values (null,'swtich是否能作用在byte上，是否能作用在long上，是否能作用在String上?','switch（expr1）中，expr1是一个整数表达式。因此传递给 switch 和 case 语句的参数应该是 int、 short、 char 或者 byte。long,string 都不能作用于swtich。',2);
insert into simplequestion values (null,'char型变量中能不能存贮一个中文汉字?为什么? ','是能够定义成为一个中文的，因为java中以unicode编码，一个char占16个字节，所以放一个中文是没问题的',2);

insert into simplequestion values (null,'jsp有哪些内置对象?作用分别是什么?','JSP共有以下9种基本内置组件： request 用户端请求，此请求会包含来自GET/POST请求的参数， response 网页传回用户端的回应 ，pageContext 网页的属性是在这里管理， session 与请求有关的会话期 ，application servlet 正在执行的内容， out 用来传送回应的输出， config servlet的构架部件 page JSP网页本身， exception 针对错误网页，未捕捉的例外 ',3);
insert into simplequestion values (null,'JSP中动态INCLUDE与静态INCLUDE的区别？','动态INCLUDE用jsp:include动作实现 <jsp:include page="included.jsp" flush="true" />它总是会检查所含文件中的变化，适合用于包含动态页面，并且可以带参数。静态INCLUDE用include伪码实现,定不会检查所含文件的变化，适用于包含静态页面 <%@ include file="included.htm" %>',3);
insert into simplequestion values (null,'说一说Servlet的生命周期?','servlet有良好的生存期的定义，包括加载和实例化、初始化、处理请求以及服务结束。这个生存期由javax.servlet.Servlet接口的init,service和destroy方法表达。',3);
insert into simplequestion values (null,'JAVA SERVLET API中forward() 与redirect()的区别？','前者仅是容器中控制权的转向，在客户端浏览器地址栏中不会显示出转向后的地址；后者则是完全的跳转，浏览器将会得到跳转的地址，并重新发送请求链接。这样，从浏览器的地址栏中可以看到跳转后的链接地址。所以，前者更加高效，在前者可以满足需要时，尽量使用forward()方法，并且，这样也有助于隐藏实际的链接。在有些情况下，比如，需要跳转到一个其它服务器上的资源，则必须使用sendRedirect()方法。',3);
insert into simplequestion values (null,'你在项目中用到了xml技术的哪些方面?如何实现的? ','用到了数据存贮，信息配置两方面。在做数据交换平台时，将不能数据源的数据组装成XML文件，然后将XML文件压缩打包加密后通过网络传送给接收者，接收解密与解压缩后再同XML文件中还原相关信息进行处理。在做软件配置时，利用XML可以很方便的进行，软件的各种配置参数都存贮在XML文件中。',3);
insert into simplequestion values (null,'EJB2.0有哪些内容?分别用在什么场合? EJB2.0和EJB1.1的区别?','规范内容包括Bean提供者，应用程序装配者，EJB容器，EJB配置工具，EJB服务提供者，系统管理员。这里面，EJB容器是EJB之所以能够运行的核心。EJB容器管理着EJB的创建，撤消，激活，去活，与数据库的连接等等重要的核心工作。JSP,Servlet,EJB,JNDI,JDBC,JMS..... ',3);
insert into simplequestion values (null,'MVC的各个部分都有那些技术来实现?如何实现? ','MVC是Model－View－Controller的简写。"Model" 代表的是应用的业务逻辑（通过JavaBean，EJB组件实现）， "View" 是应用的表示面（由JSP页面产生），"Controller" 是提供应用的处理过程控制（一般是一个Servlet），通过这种设计模型把应用逻辑，处理过程和显示逻辑分成不同的组件实现。这些组件可以进行交互和重用。',3);
insert into simplequestion values (null,'开发中都用到了那些设计模式?用在什么场合? ','每个模式都描述了一个在我们的环境中不断出现的问题，然后描述了该问题的解决方案的核心。通过这种方式，你可以无数次地使用那些已有的解决方案，无需在重复相同的工作。主要用到了MVC的设计模式。用来开发JSP/Servlet或者J2EE的相关应用。简单工厂模式等。',3);
insert into simplequestion values (null,'说出ArrayList,Vector, LinkedList的存储性能和特性','ArrayList和Vector都是使用数组方式存储数据，此数组元素数大于实际存储的数据以便增加和插入元素，它们都允许直接按序号索引元素，但是插入元素要涉及数组元素移动等内存操作，所以索引数据快而插入数据慢，Vector由于使用了synchronized方法（线程安全），通常性能上较ArrayList差，而LinkedList使用双向链表实现存储，按序号索引数据需要进行前向或后向遍历，但是插入数据时只需要记录本项的前后项即可，所以插入速度较快。',3);
insert into simplequestion values (null,'存储过程和函数的区别','存储过程是用户定义的一系列sql语句的集合，涉及特定表或其它对象的任务，用户可以调用存储过程，而函数通常是数据库已定义的方法，它接收参数并返回某种类型的值并且不涉及特定用户表。',3);

