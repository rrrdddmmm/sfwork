<%@ page language="java"
	import="java.sql.*,com.ComputerTrainingPlatform.*,com.jspsmart.upload.SmartUpload,com.jspsmart.upload.SmartUploadException"
	pageEncoding="GB18030"%>

<%
	request.setCharacterEncoding("GB18030");
	String courseNumber="";
	String courseName="";
	String teacherName="";
	String courseInfo="";
	int courseType=0;
	String fileDeliver = "";
	String filename = "";
	int count = 0;
	SmartUpload su = new SmartUpload();
	try {
		su.initialize(this.getServletConfig(), request, response);
		su.setDeniedFilesList("exe,bat,jsp,html");
		su.upload();		
		count = su.save("/upload");
		com.jspsmart.upload.File file =	 su.getFiles().getFile(0);
		filename = file.getFileName();
		System.out.println(filename);

		//filename = new String(filename.getBytes(),"UTF-8");
		courseNumber=su.getRequest().getParameter("courseNumber");
		courseName=su.getRequest().getParameter("courseName");
		teacherName=su.getRequest().getParameter("teacherName");
		courseInfo=su.getRequest().getParameter("courseInfo");
		courseType=Integer.parseInt(su.getRequest().getParameter("courseType"));
		System.out.println(courseType);
		fileDeliver = su.getRequest().getParameter("fileDeliver");
		System.out.println(fileDeliver);
	} catch (SmartUploadException e) { 
		e.printStackTrace();
	} 

	Connection conn = DB1.getConn();
	String sql = "insert into course values(null,'" +courseNumber+"','"+courseName+"','"+teacherName+"','"+
	courseInfo+"','"+courseType+"','"+fileDeliver+"','"+filename +"',now())";
	DB1.executeUpdate(conn, sql);
	
	response.sendRedirect("videoSCCG.jsp");
	
	DB1.close(conn);
%>

