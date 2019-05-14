<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.kevin.bbs.*"%>
<%
	request.setCharacterEncoding("GB18030");
	String action = request.getParameter("action");
	if (action != null && action.trim().equals("post")) {
		String title = request.getParameter("title");
		System.out.println(title);
		String cont = request.getParameter("cont");
		System.out.println(cont);

		Connection conn = DB.getConn();
		boolean autoCommit = conn.getAutoCommit();
		conn.setAutoCommit(false);

		int rootId = -1;
		String sql = "insert into article values (null, ?, ?, ?, ?, now(), ?)";
		PreparedStatement pstmt = DB.prepareStmt(conn, sql,
				Statement.RETURN_GENERATED_KEYS);
		pstmt.setInt(1, 0);
		pstmt.setInt(2, rootId);
		pstmt.setString(3, title);
		pstmt.setString(4, cont);
		pstmt.setInt(5, 0);
		pstmt.executeUpdate();

		ResultSet rsKey = pstmt.getGeneratedKeys();
		rsKey.next();
		rootId = rsKey.getInt(1);

		Statement stmt = DB.createStmt(conn);
		stmt.executeUpdate("update article set rootid = " + rootId
				+ " where id = " + rootId);

		conn.commit();
		conn.setAutoCommit(autoCommit);
		DB.close(stmt);
		DB.close(pstmt);
		DB.close(conn);
		
		response.sendRedirect("articleFlat.jsp");
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>剪纸在线实践平台-在线论坛</title>
		<meta http-equiv="content-type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="images/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="images/global.js"></script>

		<!-- fckeditor -->
		<!-- end of fckeditor -->

		<link rel="alternate" type="application/rss+xml" title="RSS"
			href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
	</head>
	<body>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td>
						<a href="http://bbs.chinajavaworld.com/index.jspa"></a>					<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1000" height="150">
                          <param name="movie" value="images/zaixianluntan.swf">
                          <param name="quality" value="high">
                          <embed src="images/zaixianluntan.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1000" height="150"></embed>
					    </object></td>
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
								<a href="articleFlat.jsp">首页</a> &#187;
								
									发表新主题
								</p>
							<p class="jive-page-title">
								发表新主题
							</p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<table bgcolor="#0066FF" width="100%" height="20"><tr><td></td></tr></table>
			<!-- <div class="jive-buttons" style="background-color:#0066FF">
			  <p>&nbsp;</p>
			 
			</div>
			-->
			
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">
											<form action="post.jsp" method="post">
												<input type="hidden" name="action" value="post" />
												标题：
												<input type="text" name="title">
												<br>
												内容：
												<textarea name="cont" rows="15" cols="80"></textarea>
												<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="submit" value="提交" />
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
																	<a
																		href="articleFlat.jsp"><img
																			src="images/arrow-left-16x16.gif" alt="返回到主题列表"
																			border="0" height="16" hspace="6" width="16"> </a>
																</td>
																<td>
																	<a
																		href="articleFlat.jsp">返回到主题列表</a>
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
