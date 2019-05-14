<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>

<%
	request.setCharacterEncoding("GB18030");
	String delId = request.getParameter("delId");
	
	
	Connection conn = DB1.getConn();
	String sql = "delete from simplequestion where id = '" + delId + "'";
	DB1.executeUpdate(conn, sql);
	
	DB1.close(conn);
	response.sendRedirect("managerSQ.jsp");
%>