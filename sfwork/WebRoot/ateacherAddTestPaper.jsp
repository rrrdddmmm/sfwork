<%@ page pageEncoding="GB18030" %>
<%@ page import="java.io.*, java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" %>
<%
	request.setCharacterEncoding("GB18030");
	
	String paperNumber = request.getParameter("paperNumber");
	
	int selectEasy = Integer.parseInt(request.getParameter("selectEasy").trim());
	int selectNormal = Integer.parseInt(request.getParameter("selectNormal").trim());
	int selectDifficulty = Integer.parseInt(request.getParameter("selectDifficulty").trim());
	double selectScore = Double.parseDouble(request.getParameter("selectScore").trim());
	
	int simpleEasy = Integer.parseInt(request.getParameter("simpleEasy").trim());
	int simpleNormal = Integer.parseInt(request.getParameter("simpleNormal").trim());
	int simpleDifficulty = Integer.parseInt(request.getParameter("simpleDifficulty").trim());
	double simpleScore = Double.parseDouble(request.getParameter("simpleScore").trim());
	
	Connection conn = DB1.getConn();
	String sql = "insert into testpaper values('" + paperNumber + "'," + selectEasy + ","
		+ selectNormal + "," + selectDifficulty + "," + simpleEasy + "," + simpleNormal + ","
		 + simpleDifficulty + "," + selectScore + "," + simpleScore + ")" ;
	DB1.executeUpdate(conn, sql);
	
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


<h2><i>试卷添加成功！</i></h2><br>
<span id="time" style="background:red">2</span>
秒后自动跳转，如果不跳转，请点击下面链接
<a href="teacherAddTestPaper.jsp">返回</a>
<script type="text/javascript">
	delayURL("teacherAddTestPaper.jsp", 3000);
</script>