<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");
	String username = (String)session.getAttribute("username");
	String teacherName = request.getParameter("name");
	String teacherNumber = request.getParameter("number");
	String teacherCourse = request.getParameter("course");
	String email = request.getParameter("email");
	
	
	Connection conn = DB1.getConn();
	String sql = "insert into teacher (teacher_number,teacher_name,email,teacher_course) values('" + teacherNumber + "','" + teacherName + "','"
		+ email + "','"+ teacherCourse + "')";
	DB1.executeUpdate(conn, sql);
	
	String sqluser = "insert into user values('" + teacherNumber + "','" + teacherNumber  + "',2,'" + email + "')";
	DB1.executeUpdate(conn, sqluser);
	
	response.sendRedirect("amanagerTJJSCG.jsp");
%>

