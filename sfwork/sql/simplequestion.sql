use ctplatform;

create table simplequestion (
	id int primary key auto_increment,
	title varchar(100),
	answer varchar(500),
	difficulty int);
	
insert into simplequestion values (null,'C++��Java�е��쳣������Ƶļ�ԭ���Ӧ��','��JAVA����Υ����JAVA���������ʱ��JAVA������ͻὫ�����Ĵ����ʾΪһ���쳣��Υ������������2�������һ����JAVA������õ������顣���������±�Խ��,������IndexOutOfBoundsException;����null�Ķ���ʱ������NullPointerException����һ���������JAVA�������Ա��չ���������飬����Ա���Դ����Լ����쳣��������ѡ���ں�ʱ��throw�ؼ��������쳣�����е��쳣����java.lang.Thowable�����ࡣ',1);
insert into simplequestion values (null,'Java�Ľӿں�C++���������ͬ�Ͳ�ͬ����','����Java��֧�ֶ�̳У����п���ĳ��������Ҫʹ�÷ֱ��ڼ�������������ķ��������ԣ����еĵ��̳л��ƾͲ�������Ҫ����̳���ȣ��ӿ��и��ߵ�����ԣ���Ϊ�ӿ���û���κ�ʵ�ִ��롣��һ����ʵ���˽ӿ��Ժ󣬸���Ҫʵ�ֽӿ��������еķ��������ԣ����ҽӿ������������Ĭ��״̬���涼��public static,���з���Ĭ���������public.һ�������ʵ�ֶ���ӿڡ�',1);
insert into simplequestion values (null,'Error��Exception��ʲô����','Error��ʾϵͳ���Ĵ���ͳ��򲻱ش�����쳣��Exception��ʾ��Ҫ��׽������Ҫ������д�����쳣��',1);
insert into simplequestion values (null,'��java��һ���౻����Ϊfinal���ͣ���ʾ��ʲô��˼?','��ʾ���಻�ܱ��̳У��Ƕ����ࡣ',1);
insert into simplequestion values (null,'heap��stack��ʲô����?','ջ��һ�����μ��ϣ�����Ӻ�ɾ��Ԫ�صĲ���Ӧ��ͬһ����ɡ�ջ���պ���ȳ��ķ�ʽ���д�������ջ��һ�����Ԫ��',1);
insert into simplequestion values (null,'Anonymous Inner Class (�����ڲ���) �Ƿ����extends(�̳�)�����࣬�Ƿ����implements(ʵ��)interface(�ӿ�)? ','�������ڲ�����û�����ֵ��ڲ��ࡣ����extends(�̳�) �����࣬��һ���ڲ��������Ϊһ���ӿڣ�����һ���ڲ���ʵ�֡�',1);
insert into simplequestion values (null,'Static Nested Class �� Inner Class�Ĳ�ͬ��˵��Խ��Խ��(�������еĺ���ͳ)��','Nested Class ��һ����C++��˵������Inner Class (һ����JAVA��˵��)��Java�ڲ�����C++Ƕ�������Ĳ�ͬ�������Ƿ���ָ���ⲿ�������ϡ�����ɼ�http: //www.frontfree.net/articles/services/view.asp?id=704&page=1 ע�� ��̬�ڲ��ࣨInner Class����ζ��1����һ��static�ڲ���Ķ��󣬲���Ҫһ���ⲿ�����2���ܴ�һ��static�ڲ����һ���������һ���ⲿ�����',1);
insert into simplequestion values (null,'&��&&������','&��λ�������&&�ǲ����߼�������� ',1);
insert into simplequestion values (null,'HashMap��Hashtable������','������Map�ӿڵ��࣬ʵ���˽�Ωһ��ӳ�䵽�ض���ֵ�ϡ�HashMap ��û�з����������������һ�� null ���Ͷ�� null ֵ��Hashtable ������ HashMap�����ǲ����� null ���� null ֵ����Ҳ�� HashMap ������Ϊ����ͬ���ġ�',1);
insert into simplequestion values (null,'Collection �� Collections������','Collections�Ǹ�java.util�µ��࣬�������и����йؼ��ϲ����ľ�̬������Collection�Ǹ�java.util�µĽӿڣ����Ǹ��ּ��Ͻṹ�ĸ��ӿڡ�',1);


insert into simplequestion values (null,'GC��ʲô? ΪʲôҪ��GC?','GC�������ռ�����Java ����Ա���õ����ڴ������Ϊ�����ռ������Զ����й���Ҫ���������ռ������Ե�������ķ���֮һ��System.gc() ,Runtime.getRuntime().gc() ',2);
insert into simplequestion values (null,'String s = new String("xyz");�����˼���String Object? ','��������һ���ǡ�xyx��,һ����ָ��xyx�������ö���s��',2);
insert into simplequestion values (null,'sleep() �� wait() ��ʲô����? ���̵߳��','sleep()������ʹ�߳�ֹͣһ��ʱ��ķ�������sleep ʱ�����������̲߳�һ�������ָ�ִ�С�������Ϊ���Ǹ�ʱ�̣������߳̿����������ж���û�б�����Ϊ����ִ�У�����(a)�����������߳̾��и��ߵ����ȼ� (b)�������е��߳���Ϊ����ԭ���������wait()���߳̽���ʱ������̶߳�һ��ͬ������x ����һ��wait()���ã����̻߳���ִͣ�У������������ȴ�״̬��ֱ�������ѻ�ȴ�ʱ�䵽��',2);
insert into simplequestion values (null,'������û��length()�������? String��û��length()���������','����û��length()�����������length�����ԡ�String����length()��������� ',2);
insert into simplequestion values (null,'Overload��Override������Overloaded�ķ����Ƿ���Ըı䷵��ֵ������?','��������дOverriding������Overloading��Java��̬�ԵĲ�ͬ���֡���дOverriding�Ǹ���������֮���̬�Ե�һ�ֱ��֣�����Overloading��һ�����ж�̬�Ե�һ�ֱ��֡�����������ж���ĳ�������丸������ͬ�����ƺͲ���������˵�÷�������д (Overriding)������Ķ���ʹ���������ʱ�������������еĶ��壬�������ԣ������еĶ�����ͬ�������Ρ��ˡ������һ�����ж����˶��ͬ���ķ��������ǻ��в�ͬ�Ĳ����������в�ͬ�Ĳ������ͣ����Ϊ����������(Overloading)��Overloaded�ķ����ǿ��Ըı䷵��ֵ�����͡�',2);
insert into simplequestion values (null,'Set���Ԫ���ǲ����ظ��ģ���ô��ʲô�����������ظ������? ����==����equals()? �����к�����? ','Set���Ԫ���ǲ����ظ��ģ���ô��iterator()�����������ظ����equals()���ж�����Set�Ƿ���ȡ�equals()��==������������ֵ�Ƿ�ָ��ͬһ����equals()�����б����ǣ�Ϊ���ǵ���������Ķ�������ݺ���������Ļ���������ֵ��',2);
insert into simplequestion values (null,'�ӿ��Ƿ�ɼ̳нӿ�? �������Ƿ��ʵ��(implements)�ӿ�? �������Ƿ�ɼ̳�ʵ����(concrete class)? ','�ӿڿ��Լ̳нӿڡ����������ʵ��(implements)�ӿڣ��������Ƿ�ɼ̳�ʵ���࣬��ǰ����ʵ�����������ȷ�Ĺ��캯����',2);
insert into simplequestion values (null,'��һ�����󱻵����������ݵ�һ�������󣬴˷����ɸı������������ԣ����ɷ��ر仯��Ľ������ô���ﵽ����ֵ���ݻ������ô���? ','��ֵ���ݡ�Java �������ֻ��ֵ���ݲ�������һ������ʵ����Ϊһ�����������ݵ�������ʱ��������ֵ���ǶԸö�������á���������ݿ����ڱ����õķ����иı䣬���������������Զ����ı�ġ�',2);
insert into simplequestion values (null,'swtich�Ƿ���������byte�ϣ��Ƿ���������long�ϣ��Ƿ���������String��?','switch��expr1���У�expr1��һ���������ʽ����˴��ݸ� switch �� case ���Ĳ���Ӧ���� int�� short�� char ���� byte��long,string ������������swtich��',2);
insert into simplequestion values (null,'char�ͱ������ܲ��ܴ���һ�����ĺ���?Ϊʲô? ','���ܹ������Ϊһ�����ĵģ���Ϊjava����unicode���룬һ��charռ16���ֽڣ����Է�һ��������û�����',2);

insert into simplequestion values (null,'jsp����Щ���ö���?���÷ֱ���ʲô?','JSP��������9�ֻ������������ request �û������󣬴�������������GET/POST����Ĳ����� response ��ҳ�����û��˵Ļ�Ӧ ��pageContext ��ҳ����������������� session �������йصĻỰ�� ��application servlet ����ִ�е����ݣ� out �������ͻ�Ӧ������� config servlet�Ĺ��ܲ��� page JSP��ҳ���� exception ��Դ�����ҳ��δ��׽������ ',3);
insert into simplequestion values (null,'JSP�ж�̬INCLUDE�뾲̬INCLUDE������','��̬INCLUDE��jsp:include����ʵ�� <jsp:include page="included.jsp" flush="true" />�����ǻ��������ļ��еı仯���ʺ����ڰ�����̬ҳ�棬���ҿ��Դ���������̬INCLUDE��includeα��ʵ��,�������������ļ��ı仯�������ڰ�����̬ҳ�� <%@ include file="included.htm" %>',3);
insert into simplequestion values (null,'˵һ˵Servlet����������?','servlet�����õ������ڵĶ��壬�������غ�ʵ��������ʼ�������������Լ���������������������javax.servlet.Servlet�ӿڵ�init,service��destroy������',3);
insert into simplequestion values (null,'JAVA SERVLET API��forward() ��redirect()������','ǰ�߽��������п���Ȩ��ת���ڿͻ����������ַ���в�����ʾ��ת���ĵ�ַ������������ȫ����ת�����������õ���ת�ĵ�ַ�������·����������ӡ���������������ĵ�ַ���п��Կ�����ת������ӵ�ַ�����ԣ�ǰ�߸��Ӹ�Ч����ǰ�߿���������Ҫʱ������ʹ��forward()���������ң�����Ҳ����������ʵ�ʵ����ӡ�����Щ����£����磬��Ҫ��ת��һ�������������ϵ���Դ�������ʹ��sendRedirect()������',3);
insert into simplequestion values (null,'������Ŀ���õ���xml��������Щ����?���ʵ�ֵ�? ','�õ������ݴ�������Ϣ���������档�������ݽ���ƽ̨ʱ������������Դ��������װ��XML�ļ���Ȼ��XML�ļ�ѹ��������ܺ�ͨ�����紫�͸������ߣ����ս������ѹ������ͬXML�ļ��л�ԭ�����Ϣ���д��������������ʱ������XML���Ժܷ���Ľ��У�����ĸ������ò�����������XML�ļ��С�',3);
insert into simplequestion values (null,'EJB2.0����Щ����?�ֱ�����ʲô����? EJB2.0��EJB1.1������?','�淶���ݰ���Bean�ṩ�ߣ�Ӧ�ó���װ���ߣ�EJB������EJB���ù��ߣ�EJB�����ṩ�ߣ�ϵͳ����Ա�������棬EJB������EJB֮�����ܹ����еĺ��ġ�EJB����������EJB�Ĵ��������������ȥ������ݿ�����ӵȵ���Ҫ�ĺ��Ĺ�����JSP,Servlet,EJB,JNDI,JDBC,JMS..... ',3);
insert into simplequestion values (null,'MVC�ĸ������ֶ�����Щ������ʵ��?���ʵ��? ','MVC��Model��View��Controller�ļ�д��"Model" �������Ӧ�õ�ҵ���߼���ͨ��JavaBean��EJB���ʵ�֣��� "View" ��Ӧ�õı�ʾ�棨��JSPҳ���������"Controller" ���ṩӦ�õĴ�����̿��ƣ�һ����һ��Servlet����ͨ���������ģ�Ͱ�Ӧ���߼���������̺���ʾ�߼��ֳɲ�ͬ�����ʵ�֡���Щ������Խ��н��������á�',3);
insert into simplequestion values (null,'�����ж��õ�����Щ���ģʽ?����ʲô����? ','ÿ��ģʽ��������һ�������ǵĻ����в��ϳ��ֵ����⣬Ȼ�������˸�����Ľ�������ĺ��ġ�ͨ�����ַ�ʽ������������ε�ʹ����Щ���еĽ���������������ظ���ͬ�Ĺ�������Ҫ�õ���MVC�����ģʽ����������JSP/Servlet����J2EE�����Ӧ�á��򵥹���ģʽ�ȡ�',3);
insert into simplequestion values (null,'˵��ArrayList,Vector, LinkedList�Ĵ洢���ܺ�����','ArrayList��Vector����ʹ�����鷽ʽ�洢���ݣ�������Ԫ��������ʵ�ʴ洢�������Ա����ӺͲ���Ԫ�أ����Ƕ�����ֱ�Ӱ��������Ԫ�أ����ǲ���Ԫ��Ҫ�漰����Ԫ���ƶ����ڴ�����������������ݿ��������������Vector����ʹ����synchronized�������̰߳�ȫ����ͨ�������Ͻ�ArrayList���LinkedListʹ��˫������ʵ�ִ洢�����������������Ҫ����ǰ��������������ǲ�������ʱֻ��Ҫ��¼�����ǰ����ɣ����Բ����ٶȽϿ졣',3);
insert into simplequestion values (null,'�洢���̺ͺ���������','�洢�������û������һϵ��sql���ļ��ϣ��漰�ض������������������û����Ե��ô洢���̣�������ͨ�������ݿ��Ѷ���ķ����������ղ���������ĳ�����͵�ֵ���Ҳ��漰�ض��û���',3);

