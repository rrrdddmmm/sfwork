<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");
	String username = (String)session.getAttribute("username");
	String noticeDeliver = request.getParameter("deliver");
	String noticeTitle = request.getParameter("title");
	String noticeContent = request.getParameter("content");
	
	
	Connection conn = DB1.getConn();
	String sql = "insert into notice values(null,?, ?, now(), ?)";
	PreparedStatement pstmt = DB1.createPstmt(conn, sql);
	pstmt.setString(1, noticeTitle);
	pstmt.setString(2, noticeContent);
	pstmt.setString(3, noticeDeliver);
	pstmt.executeUpdate();
	
	response.sendRedirect("amanagerXTTZCG.jsp");
%>

