<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");

	String username = (String)session.getAttribute("username");
	String newsDeliver = request.getParameter("deliver");
	String newsTitle = request.getParameter("title");
	String newsContent = request.getParameter("content");
	
	
	Connection conn = DB1.getConn();
	String sql = "insert into news values(null,?,?,now(),?)";
	PreparedStatement pstmt = DB1.createPstmt(conn, sql);
	pstmt.setString(1, newsTitle);
	pstmt.setString(2, newsContent);
	pstmt.setString(3, newsDeliver);
	pstmt.executeUpdate();
	
	
	response.sendRedirect("amanagerXWGGCG.jsp");
%>

