<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.kevin.bbs.*"%>
<%
	//���ñ����ʽΪGB18030
	request.setCharacterEncoding("GB18030");
	//�жϷ���ҳ�����Դ
	String action = request.getParameter("action");
	int id = Integer.parseInt(request.getParameter("id"));
	if (action != null && action.trim().equals("modify")) {
		//ȡ���������������
		String title = request.getParameter("title");
		System.out.println(title);
		String cont = request.getParameter("cont");
		System.out.println(cont);
		//�������ݿⰴ���û��޸ĵ�Ҫ���޸����ݿ�����������
		Connection conn = DB.getConn();
		PreparedStatement pstmt = DB.prepareStmt(conn, "update article set title = ? , cont = ? where id = ? ");
		pstmt.setString(1, title);
		pstmt.setString(2, cont);
		pstmt.setInt(3, id);
		pstmt.executeUpdate();
		//�ر����ݿ�����
		DB.close(conn);
		//�����ɹ�����ת��articleFlat.jsp��������ҳ��
		response.sendRedirect("articleFlat.jsp");
		return;
	}
%>

<%
	Connection conn = DB.getConn();
	Statement stmt = DB.createStmt(conn);
	ResultSet rs = DB.executeQuery(stmt,"select * from article where id = " + id);
	Article a = new Article();
	if(!rs.next()) return;
	a.initFromRs(rs);
	
	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>��ֽ����ʵ��ƽ̨-������̳</title>
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
								<a href="articleFlat.jsp">��ҳ</a> &#187; <a href="login.jsp">����Ա��½</a> &#187; �޸�����ҳ��</p>
							<p class="jive-page-title">
								�޸�����
							</p>
					  </td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons" style="background-color:#0099FF"><br></div>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">
											<form action="modify.jsp" method="post">
												<input type="hidden" name="action" value="modify" />
												<input type="hidden" name="id" value="<%=id %>" />
												���⣺
												<input type="text" name="title" value="<%=a.getTitle() %>">
												<br>
												���ݣ�
                                                <textarea name="cont" rows="15" cols="80" ><%=a.getCont() %></textarea>												
                                              <br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="submit" value="�ύ" />
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
																		href="artucleFlat.jsp"><img
																			src="images/arrow-left-16x16.gif" alt="���ص������б�"
																			border="0" height="16" hspace="6" width="16"> </a>																</td>
																<td>
																	<a
																		href="articleFlat.jsp">���ص������б�</a>																</td>
															</tr>
														</tbody>
													</table>												</td>
												<td nowrap="nowrap" width="1%">												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
