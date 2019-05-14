<%@ page language="java"
	import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*,com.jspsmart.upload.SmartUpload,com.jspsmart.upload.SmartUploadException"
	pageEncoding="GB18030"%>
<%
	//设置编码格式为GB18030
	request.setCharacterEncoding("GB18030");
	
	//得到考试试卷的编号，考试选择提各种难度题目的数目，还有分数信息
	String testPaperNo = request.getParameter("testPaperNo");
	int selectTotalNumber = Integer.parseInt(request.getParameter("selectTotalNumber"));
	double selectScore = Double.parseDouble(request.getParameter("selectScore"));
	int simpleTotalNumber = Integer.parseInt(request.getParameter("simpleTotalNumber"));
	//定义一个数组用来存储学生考试试卷的问答题题目和学生的答案
	String jdTitle[] = new String[simpleTotalNumber];
	String jdAnswer[] = new String[simpleTotalNumber];
	String studentNumber = request.getParameter("studentNumber");
	System.out.println(studentNumber);
	//定义个数组用来存储学生考试试卷的单项选择题题目和答案
	String selectedAnswer[] = new String[selectTotalNumber];
	String questionTitle[] = new String[selectTotalNumber];
	
	//链接数据库
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	ResultSet rs;
	
	//对上面的数组进行赋值
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
	//定义单项选择题正确的题目的数目初始化为0，定义学生单项选择题的分数初始化为0
	int correctCount = 0;
	double score = 0;
	//计算学生的单项选择题得到的总分数
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
	
	//链接数据库，将学生单项选择题的总分数，和学生的问答题题目和答案，保存到score表格中，将来教师判卷而用
	String sql2 = "insert into score values('" + studentNumber + "','" + score + "','" + testPaperNo + "',0)";
	DB1.executeUpdate(conn, sql2);
	
	for(int i=0;i<simpleTotalNumber;i++){
		String sql1 = "insert into scoresimple values (null,'" + jdTitle[i] + "','" + jdAnswer[i] + "','" + studentNumber + "')";
		DB1.executeUpdate(conn, sql1);
	}
	
	//关闭数据库俩链接
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
	<i>试卷提交成功！</i>
</h2>
<br>
<span id="time" style="background: red">5</span>
秒后自动退出系统，如果不跳转，请点击下面链接
<a href="index.jsp">返回</a>
<script type="text/javascript">
	delayURL("index.jsp", 3000);
</script>

