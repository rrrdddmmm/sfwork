<%@ page language="java" import="java.io.File, com.jspsmart.upload.*, com.ComputerTrainingPlatform.*, java.sql.*, java.awt.*, java.awt.image.BufferedImage, javax.imageio.ImageIO" pageEncoding="GB18030"%>

<%
	request.setCharacterEncoding("GB18030");
	String fileId = request.getParameter("fileId");
	
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	String sql = "select * from sourcefile where id = " +  fileId;
	ResultSet rs = DB1.executeQuery(stmt, sql);
	SourceFile sf = new SourceFile();
	rs.next();
	sf.initFromRs(rs);
	String filename = sf.getFileName();
	System.out.println(filename);

	SmartUpload su = new SmartUpload();
	su.initialize(pageContext);
	su.setContentDisposition(null);
	String absPath=new java.io.File(application.getRealPath(request.getRequestURI())).getParent();
	su.downloadFile(""+absPath+"/source/" + filename);
	
	
	
	
	
	
		
	
%>
