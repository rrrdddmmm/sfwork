<%@ page language="java"
	import="java.sql.*,com.ComputerTrainingPlatform.*,com.jspsmart.upload.SmartUpload,com.jspsmart.upload.SmartUploadException"
	pageEncoding="GB18030"%>

<%
	request.setCharacterEncoding("GB18030");
	String fileDeliver = "";
	String filename = "";
	int count = 0;
	SmartUpload su = new SmartUpload();
	try {
		su.initialize(this.getServletConfig(), request, response);
		 su.setDeniedFilesList("exe,bat,jsp,htm,html,,");
		su.upload();		
		count = su.save("/source");
		out.println(count+"个文件上传成功！<br>");
		com.jspsmart.upload.File file =	 su.getFiles().getFile(0);
		filename = file.getFileName();
		System.out.println(filename);

		//filename = new String(filename.getBytes(),"UTF-8");
		fileDeliver = su.getRequest().getParameter("fileDeliver");
		System.out.println(fileDeliver);
	} catch (SmartUploadException e) { 
		e.printStackTrace();
	} 

	Connection conn = DB1.getConn();
	String sql = "insert into sourcefile values(null,'" +filename + "','" + fileDeliver + "',now())";
	DB1.executeUpdate(conn, sql);
	
	response.sendRedirect("amanagerSCCG.jsp");
	
	DB1.close(conn);
%>

