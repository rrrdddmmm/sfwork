<%@page language="java" pageEncoding="GB18030"%>
<%@page
	import="java.sql.*,com.kevin.bbs.*,com.ComputerTrainingPlatform.*"%>
<%
	request.setCharacterEncoding("GB18030");
	String action = request.getParameter("action");

	if (action != null && action.trim().equals("login")) {
		String username = request.getParameter("username");
		String userpassword = request.getParameter("password");
		String paperNumber = request.getParameter("paperNumber");

		Connection conn = DB1.getConn();
		Statement stmt = DB1.createStmt(conn);
		String sql = "select * from user where username = '" + username
				+ "' and userpassword = '" + userpassword
				+ "' and userclass = 1";
		ResultSet rs = DB1.executeQuery(stmt, sql);

		if (rs.next()) {
			session.setAttribute("studentNumber", username);
			session.setAttribute("paperNumber", paperNumber);
			response.sendRedirect("onlineExam.jsp");
		} else {
			response.sendRedirect("onlineExamSB.jsp");
		}

		DB1.close(rs);
		DB1.close(stmt);
		DB1.close(conn);
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>剪纸在线教学平台</title>
		<meta http-equiv="content-type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="images/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="images/global.js"></script>
		<link rel="alternate" type="application/rss+xml" title="RSS"
			href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
	</head>
	<body>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td>
						<a href="http://bbs.chinajavaworld.com/index.jspa"></a>
						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
							codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
							width="1000" height="150">
							<param name="movie" value="images/huanyingkaoshi.swf">
							<param name="quality" value="high">
							<embed src="images/huanyingkaoshi.swf" 
								type="application/x-shockwave-flash" width="1000" height="150"></embed>
						</object>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<div id="jive-flatpage">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<p class="jive-breadcrumbs">
								<a href="index.jsp">首页</a> &#187; 考试系统登陆
							</p>
							<p class="jive-page-title">
								&nbsp;
							</p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons" style="background-color: #0099FF">
				<br>
			</div>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox" align="center">
											<form action="loginExam.jsp" method="post">
												<%
													//String errorInfo = (String)request.getAttribute("errorInfo");
													//if(errorInfo != null) {
													//out.println(errorInfo);
													//}
												%>
												<table border="1">
													<tr>
														<td>
															<input type="hidden" name="action" value="login" />
															用户名：
														</td>
														<td>
															<input type="text" name="username" />
														</td>
													</tr>
													<tr>
														<td>
															密码：
														</td>
														<td>
															<input type="password" name="password" />
														</td>
													</tr>
													<tr>
														<td>
															试卷编号：
														</td>
														<td>
															<input type="text" name="paperNumber" />
														</td>
													</tr>
													<tr>
														<td>
															&nbsp;
														</td>
														<td>
															<input type="submit" value="登陆" />
															<input type="reset" value="重置" />
														</td>
													</tr>
												</table>
											</form>
										</div>
									</div>
								</div>
								<div class="jive-message-list-footer">
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td align="center" width="98%">
													<table border="0" cellpadding="0" cellspacing="0">
														<tbody>
															<tr>
																<td>
																	<a href="index.jsp"><img
																			src="images/arrow-left-16x16.gif" alt="返回到主题列表"
																			border="0" height="16" hspace="6" width="16"> </a>
																</td>
																<td>
																	<a href="index.jsp">返回主页</a>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td nowrap="nowrap" width="1%">
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
