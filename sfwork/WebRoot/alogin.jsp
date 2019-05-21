<%@ page language="java" import="java.sql.*"
	pageEncoding="GB18030"%>
<%@page import="com.ComputerTrainingPlatform.*"%>
<%
	//设置编码格式
	request.setCharacterEncoding("GB18030"); 

	//取到表单中用户填写的username，userpassword，userClass参数的值
	String username = request.getParameter("username");
	String userpassword = request.getParameter("userpassword");
	System.out.println(username);
	System.out.println(userpassword);
	int userClass = Integer.parseInt(request.getParameter("userClass"));
	System.out.println(userClass);
	
	//判断参数是否为空，或者是空字符串，如果是返回到index.jsp界面，如果符合标准跳到相应的管理后台界面
	if (username == null || username.trim().equals("")
			|| userpassword == null || userpassword.trim().equals("")) {
		request.getRequestDispatcher("index.jsp").forward(request,
				response);
		//response.sendRedirect("index.jsp");
	} else {
	
		//建立数据库连接，判断用户名和密码是否在数据库user表中存在
		Connection conn = DB1.getConn();
		System.out.println(conn);
		Statement stmt = DB1.createStmt(conn);
		//sql语句，从user表中选择出username和userpassword与用户填入的一样的数据
		String sql = "select * from user where username = '" + username
				+ "' and userpassword = '" + userpassword + "'";
		ResultSet rs = DB1.executeQuery(stmt, sql);
		System.out.println(conn);
		if (rs.next()) {
		//设置session，把用户名添加到seesion属性中
			session.setAttribute("username", username);
			session.setAttribute("userpassword", userpassword);
			session.setAttribute("userClass", userClass);
			request.setAttribute("userpassword", userpassword);
			System.out.println("userClass:"+userClass);
			System.out.println("userpassword:"+userpassword);
			request.setAttribute("userClass", userClass);
		//判断登陆用户是那种用户类型，如果是1跳转到学生页面student.jsp，
		//如果是2跳转到教师页面teacher.jsp，如果是3跳转到管理员界面manager.jsp
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
				//用户身份不正确时，给出相应的提示
				out.println("请选择正确的登录身份");
				out.println("<a href=\"index.jsp\">返回主页</a>");
			}
		} else {
			//当用户名或密码错误时给出相应的提示
			out.println("用户名/密码错误，请输入正确的用户名和密码！");
			out.println("<a href=\"index.jsp\">返回主页</a>");
		}
		//关闭数据库连接
		DB1.close(rs);
		DB1.close(stmt);
		DB1.close(conn);
	}
%>
