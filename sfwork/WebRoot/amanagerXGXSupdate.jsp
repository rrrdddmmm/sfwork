<%@ page language="java"
	import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*"
	pageEncoding="GB18030"%>


<%
	request.setCharacterEncoding("GB18030");
	
	String studentName = request.getParameter("name");
	String studentNumber = request.getParameter("number");
	String studentSex = request.getParameter("sex");
	String studentClass = request.getParameter("studentclass");
	String email = request.getParameter("email");
	
	
	Connection conn = DB1.getConn();
	
	String sqldelete1 = "delete from student where student_number = '" + studentNumber + "'";
	DB1.executeUpdate(conn, sqldelete1);
	
	String sqldelete2 = "delete from user where username = '" + studentNumber + "'";
	DB1.executeUpdate(conn, sqldelete2);
	
	String sql = "insert into student (student_number,student_name,student_sex,student_class,email) values('" + studentNumber + "','" + studentName + "','"
		+ studentSex + "','" + studentClass + "','" + email + "')";
	DB1.executeUpdate(conn, sql);
	
	String sqluser = "insert into user values('" + studentNumber + "','" + studentNumber + "',1,'" + email + "')";
	DB1.executeUpdate(conn, sqluser);
	
	response.sendRedirect("amanagerXGXSupdateCG.jsp");
%>