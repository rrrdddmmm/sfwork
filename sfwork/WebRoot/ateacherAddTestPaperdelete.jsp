<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String number = request.getParameter("number");
	
	Connection conn = DB1.getConn();
	String sql = "delete from testpaper where peapernumber = '" + number + "'";
	DB1.executeUpdate(conn, sql);
	
	response.sendRedirect("teacherAddTestPaper.jsp");
%>