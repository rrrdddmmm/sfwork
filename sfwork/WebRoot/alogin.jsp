<%@ page language="java" import="java.sql.*"
	pageEncoding="GB18030"%>
<%@page import="com.ComputerTrainingPlatform.*"%>
<%
	//���ñ����ʽ
	request.setCharacterEncoding("GB18030"); 

	//ȡ�������û���д��username��userpassword��userClass������ֵ
	String username = request.getParameter("username");
	String userpassword = request.getParameter("userpassword");
	System.out.println(username);
	System.out.println(userpassword);
	int userClass = Integer.parseInt(request.getParameter("userClass"));
	System.out.println(userClass);
	
	//�жϲ����Ƿ�Ϊ�գ������ǿ��ַ���������Ƿ��ص�index.jsp���棬������ϱ�׼������Ӧ�Ĺ����̨����
	if (username == null || username.trim().equals("")
			|| userpassword == null || userpassword.trim().equals("")) {
		request.getRequestDispatcher("index.jsp").forward(request,
				response);
		//response.sendRedirect("index.jsp");
	} else {
	
		//�������ݿ����ӣ��ж��û����������Ƿ������ݿ�user���д���
		Connection conn = DB1.getConn();
		System.out.println(conn);
		Statement stmt = DB1.createStmt(conn);
		//sql��䣬��user����ѡ���username��userpassword���û������һ��������
		String sql = "select * from user where username = '" + username
				+ "' and userpassword = '" + userpassword + "'";
		ResultSet rs = DB1.executeQuery(stmt, sql);
		System.out.println(conn);
		if (rs.next()) {
		//����session�����û�����ӵ�seesion������
			session.setAttribute("username", username);
			session.setAttribute("userpassword", userpassword);
			session.setAttribute("userClass", userClass);
			request.setAttribute("userpassword", userpassword);
			System.out.println("userClass:"+userClass);
			System.out.println("userpassword:"+userpassword);
			request.setAttribute("userClass", userClass);
		//�жϵ�½�û��������û����ͣ������1��ת��ѧ��ҳ��student.jsp��
		//�����2��ת����ʦҳ��teacher.jsp�������3��ת������Ա����manager.jsp
			int uc = rs.getInt(3);
			if (uc == userClass) {
				if (uc == 1) {
					//request.getRequestDispatcher("student.jsp").forward(request, response);
					response.sendRedirect("student.jsp");
				} else if (uc == 2) {
					//request.getRequestDispatcher("teacher.jsp").forward(request, response);
					response.sendRedirect("teacher.jsp");
				} else if (uc == 3) {
					//request.getRequestDispatcher("manager.jsp").forward(request, response);
					response.sendRedirect("manager.jsp");
				}
			} else {
				//�û���ݲ���ȷʱ��������Ӧ����ʾ
				out.println("��ѡ����ȷ�ĵ�¼���");
				out.println("<a href=\"index.jsp\">������ҳ</a>");
			}
		} else {
			//���û������������ʱ������Ӧ����ʾ
			out.println("�û���/���������������ȷ���û��������룡");
			out.println("<a href=\"index.jsp\">������ҳ</a>");
		}
		//�ر����ݿ�����
		DB1.close(rs);
		DB1.close(stmt);
		DB1.close(conn);
	}
%>
