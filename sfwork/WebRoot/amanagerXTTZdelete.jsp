<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");
	String username = (String)session.getAttribute("username");
	int delId = Integer.parseInt(request.getParameter("delId"));
	
	
	Connection conn = DB1.getConn();
	String sql = "delete from notice where id = '" + delId + "'";
	DB1.executeUpdate(conn, sql);
	
	DB1.close(conn);
	response.sendRedirect("managerXTTZ.jsp");
%>

