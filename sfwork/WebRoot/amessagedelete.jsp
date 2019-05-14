<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.ComputerTrainingPlatform.*" %>
<%
	request.setCharacterEncoding("GB18030");

	String delId = request.getParameter("delId");
	Connection conn = DB1.getConn();
	String sql = "delete from message where id = " + delId;
	DB1.executeUpdate(conn, sql);
	
	request.getRequestDispatcher("managermessage.jsp").forward(request, response);
	
	DB1.close(conn);
%>