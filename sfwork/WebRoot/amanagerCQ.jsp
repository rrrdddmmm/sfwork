<%@ page language="java"
	import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*"
	pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");

	String choiceTitile = request.getParameter("choiceTitle");
	String choice1 = request.getParameter("choice1");
	String choice2 = request.getParameter("choice2");
	String choice3 = request.getParameter("choice3");
	String choice4 = request.getParameter("choice4");
	String choiceAnswer = request.getParameter("choiceAnswer");
	int choiceDifficulty = Integer.parseInt(request
			.getParameter("choiceDifficulty"));

	Connection conn = DB1.getConn();
	String choicesql = "insert into choicequestion values(null,'"
			+ choiceTitile + "','" + choice1 + "','" + choice2 + "','"
			+ choice3 + "','" + choice4 + "','" + choiceAnswer + "',"
			+ choiceDifficulty + ")";
	DB1.executeUpdate(conn, choicesql);

	response.sendRedirect("managerCQ.jsp");

	DB1.close(conn);
%>

