<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>

<%
	request.setCharacterEncoding("UTF-8");
	int delId = Integer.parseInt(request.getParameter("delId"));
	
	
	Connection conn = DB1.getConn();
	String sql = "delete from choicequestion where id = '" + delId + "'";
	DB1.executeUpdate(conn, sql);
	
	DB1.close(conn);
	response.sendRedirect("managerCQ.jsp");
%>