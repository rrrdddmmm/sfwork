<%@ page language="java"
	import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*,com.jspsmart.upload.SmartUpload,com.jspsmart.upload.SmartUploadException"
	pageEncoding="GB18030"%>
<%
	//���ñ����ʽΪGB18030
	request.setCharacterEncoding("GB18030");
	
	//�õ������Ծ�ı�ţ�����ѡ��������Ѷ���Ŀ����Ŀ�����з�����Ϣ
	String testPaperNo = request.getParameter("testPaperNo");
	int selectTotalNumber = Integer.parseInt(request.getParameter("selectTotalNumber"));
	double selectScore = Double.parseDouble(request.getParameter("selectScore"));
	int simpleTotalNumber = Integer.parseInt(request.getParameter("simpleTotalNumber"));
	//����һ�����������洢ѧ�������Ծ���ʴ�����Ŀ��ѧ���Ĵ�
	String jdTitle[] = new String[simpleTotalNumber];
	String jdAnswer[] = new String[simpleTotalNumber];
	String studentNumber = request.getParameter("studentNumber");
	System.out.println(studentNumber);
	//��������������洢ѧ�������Ծ�ĵ���ѡ������Ŀ�ʹ�
	String selectedAnswer[] = new String[selectTotalNumber];
	String questionTitle[] = new String[selectTotalNumber];
	
	//�������ݿ�
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	ResultSet rs;
	
	//�������������и�ֵ
	for (int i = 0; i < selectTotalNumber; i++) {
		questionTitle[i] = request.getParameter("questionTitle"
				+ (i + 1));
		System.out.println(questionTitle[i]);
		selectedAnswer[i] = request.getParameter("selectedAnswer"
				+ (i + 1));
		System.out.println(selectedAnswer[i]);
	}

	for (int i = 0; i < simpleTotalNumber; i++) {
		jdTitle[i] = request.getParameter("questionJDTitle" + (i + 1));
		System.out.println(jdTitle[i]);
		jdAnswer[i] = request
				.getParameter("questionJDAnswer" + (i + 1));
		System.out.println(jdAnswer[i]);
	}
	//���嵥��ѡ������ȷ����Ŀ����Ŀ��ʼ��Ϊ0������ѧ������ѡ����ķ�����ʼ��Ϊ0
	int correctCount = 0;
	double score = 0;
	//����ѧ���ĵ���ѡ����õ����ܷ���
	for (int i = 0; i < selectTotalNumber; i++) {
		String sql = "select * from choicequestion where title = '"
				+ questionTitle[i] + "' and answer = '"
				+ selectedAnswer[i] + "'";
		rs = DB1.executeQuery(stmt, sql);
		if (rs.next()) {
			correctCount++;
		}

		DB1.close(rs);
	}

	score = correctCount * selectScore;
	System.out.println(score);
	
	//�������ݿ⣬��ѧ������ѡ������ܷ�������ѧ�����ʴ�����Ŀ�ʹ𰸣����浽score����У�������ʦ�о����
	String sql2 = "insert into score values('" + studentNumber + "','" + score + "','" + testPaperNo + "',0)";
	DB1.executeUpdate(conn, sql2);
	
	for(int i=0;i<simpleTotalNumber;i++){
		String sql1 = "insert into scoresimple values (null,'" + jdTitle[i] + "','" + jdAnswer[i] + "','" + studentNumber + "')";
		DB1.executeUpdate(conn, sql1);
	}
	
	//�ر����ݿ�������
	DB1.close(stmt);
	DB1.close(conn);
%>

<script type="text/javascript"> 
<!--
	function delayURL(url, time) {
	var delay = document.getElementById("time").innerHTML;
	if(delay > 0) {
		delay--;
		document.getElementById("time").innerHTML = delay;
	} else {
		window.top.location.href = url;
		
	}
    setTimeout("delayURL('" + url + "')", 1000);
}
-->
</script>


<h2>
	<i>�Ծ��ύ�ɹ���</i>
</h2>
<br>
<span id="time" style="background: red">5</span>
����Զ��˳�ϵͳ���������ת��������������
<a href="index.jsp">����</a>
<script type="text/javascript">
	delayURL("index.jsp", 3000);
</script>

