<%@ page language="java"
	import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*"
	pageEncoding="GB18030"%>


<%
	request.setCharacterEncoding("GB18030");
	
	String teacherName = request.getParameter("name");
	String teacherNumber = request.getParameter("number");
	String teacherCourse = request.getParameter("course");
	String email = request.getParameter("email");
	
	
	Connection conn = DB1.getConn();
	
	String sqldelete1 = "delete from teacher where teacher_number = '" + teacherNumber + "'";
	DB1.executeUpdate(conn, sqldelete1);
	
	String sqldelete2 = "delete from user where username = '" + teacherNumber + "'";
	DB1.executeUpdate(conn, sqldelete2);
	
	String sql = "insert into teacher (teacher_number,teacher_name,teacher_course,email) values('" + teacherNumber + "','" + teacherName + "','"
		+ teacherCourse + "','" + email + "')";
	DB1.executeUpdate(conn, sql);
	
	String sqluser = "insert into user values('" + teacherNumber + "','" + teacherNumber + "',2,'" + email + "')";
	DB1.executeUpdate(conn, sqluser);
	
	response.sendRedirect("amanagerXGJSupdateCG.jsp");
%>