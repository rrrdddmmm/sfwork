<%@ page language="java" import="java.util.*, java.sql.*, com.ComputerTrainingPlatform.*" pageEncoding="GB18030"%>
<%
	//���ñ����ַ���ΪGB18030
	request.setCharacterEncoding("GB18030");  

	//��session��ȡ��username�û���
	String username = (String)session.getAttribute("username");
	
	//���յ�Ҫɾ����Ϣ��id��ת����int����
	int delId = Integer.parseInt(request.getParameter("delId"));
	
	//�������ݿ����� ��news����ɾ������
	Connection conn = DB1.getConn();
	String sql = "delete from news where id = '" + delId + "'";
	DB1.executeUpdate(conn, sql);
	
	//�ر����ݿ�����
	DB1.close(conn);
	//ɾ���ɹ������ص�ɾ��ҳ��
	response.sendRedirect("managerXWGG.jsp");
%>

