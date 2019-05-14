<%@ page language="java"
	import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*,com.jspsmart.upload.SmartUpload,com.jspsmart.upload.SmartUploadException"
	pageEncoding="GB18030"%>

<%
	request.setCharacterEncoding("GB18030");
	
	String number = request.getParameter("scorenumber");
	System.out.println(number);
	
	double totalScore = 0;
	double selectTotalScore = Double.parseDouble(request.getParameter("selectTotalScore"));
	int simpleTotalNumber = Integer.parseInt(request.getParameter("simpleTotalNumber"));
	double simpleScore[] = new double[simpleTotalNumber];
	for(int i=0;i<simpleTotalNumber;i++) {
		simpleScore[i] = Double.parseDouble(request.getParameter("simpleScore" + (i + 1)));
		System.out.println(simpleScore[i]);
		totalScore = simpleScore[i] + totalScore;
	}
	
	
	totalScore = totalScore + selectTotalScore;
	System.out.println(totalScore);
	Connection conn = DB1.getConn();
	String sqldel = "delete from studentscore where ssnumber = '" + number + "'";
	DB1.executeUpdate(conn, sqldel);
	String sql = "insert into studentscore values('" + number + "'," + totalScore + ")";
	DB1.executeUpdate(conn, sql);
	
	String sql1 = "update score set validation = 1 where score_number = '" + number + "'";
	DB1.executeUpdate(conn, sql1);
	
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
//-->
</script>


<h2><i>成绩录入成功！</i></h2><br>
<span id="time" style="background:red">5</span>
秒后自动跳转，如果不跳转，请点击下面链接
<a href="teacherOnlienExam.jsp">返回继续录入</a>
<script type="text/javascript">
	delayURL("teacherOnlienExam.jsp", 3000);
</script>
