<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");
	String username = (String)session.getAttribute("username");
	String delnumber = request.getParameter("delnumber");
	
	
	Connection conn = DB1.getConn();
	String sql = "delete from teacher where teacher_number = '" + delnumber + "'";
	DB1.executeUpdate(conn, sql);
	
	DB1.close(conn);
	response.sendRedirect("managerXGJS.jsp");
%>

