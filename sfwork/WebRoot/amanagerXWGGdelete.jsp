<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	//设置编码字符集为GB18030
	request.setCharacterEncoding("GB18030");  

	//从session中取出username用户名
	String username = (String)session.getAttribute("username");
	
	//接收到要删除消息的id，转化成int类型
	int delId = Integer.parseInt(request.getParameter("delId"));
	
	//建立数据库连接 对news进行删除操作
	Connection conn = DB1.getConn();
	String sql = "delete from news where id = '" + delId + "'";
	DB1.executeUpdate(conn, sql);
	
	//关闭数据库连接
	DB1.close(conn);
	//删除成功，返回到删除页面
	response.sendRedirect("managerXWGG.jsp");
%>

