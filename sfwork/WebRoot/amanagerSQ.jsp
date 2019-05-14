<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%

	request.setCharacterEncoding("GB18030");
	
	String simpleTitle = request.getParameter("simpleTitle");
	String simpleAnswer = request.getParameter("simpleAnswer");
	int simpleDifficulty = Integer.parseInt(request.getParameter("simpleDifficulty"));
	Connection conn = DB1.getConn();
	
	String simplesql = "insert into simplequestion values(null,'" + simpleTitle +
		"','" + simpleAnswer + "'," + simpleDifficulty + ")";
	DB1.executeUpdate(conn, simplesql);
	
	response.sendRedirect("managerSQ.jsp")
;	DB1.close(conn);
%>

