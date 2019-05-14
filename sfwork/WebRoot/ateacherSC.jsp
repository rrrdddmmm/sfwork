<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*,com.jspsmart.upload.SmartUpload, com.jspsmart.upload.SmartUploadException" pageEncoding="GB18030"%>
<%
	request.setCharacterEncoding("GB18030");
	
	int count = 0;
	SmartUpload mySmartUpload = new SmartUpload();
	
	try {
		mySmartUpload.initialize(this.getServletConfig(), request, response);
		mySmartUpload.upload();
		count = mySmartUpload.save(this.getServletContext().getRealPath("/") + "source");
	} catch (SmartUploadException e) {
		e.printStackTrace();
	}
	
	response.sendRedirect("ateacherSCCG.jsp");
%>

