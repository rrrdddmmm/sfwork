<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");
	String username = (String)session.getAttribute("username");
	String studentName = request.getParameter("name");
	String studentNumber = request.getParameter("number");
	String email = request.getParameter("email");
	String studentSex = request.getParameter("sex");
	String studentClass = request.getParameter("studentclass");
	
	
	Connection conn = DB1.getConn();
	String sql = "insert into student (student_number,student_name,email,student_sex,student_class) values('" + studentNumber + "','" + studentName + "','" + email + "','"
		+ studentSex + "','" + studentClass + "')";
	DB1.executeUpdate(conn, sql);
	
	String sqluser = "insert into user values('" + studentNumber + "','" + studentNumber + "',1,'" + email + "')";
	DB1.executeUpdate(conn, sqluser);
	
	response.sendRedirect("amanagerTJXSCG.jsp");
%>

