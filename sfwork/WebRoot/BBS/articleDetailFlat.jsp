<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.kevin.bbs.*,java.util.*"%>
<%
	request.setCharacterEncoding("GB18030");
	String strId = request.getParameter("id");
	String articleTitle = request.getParameter("articleTitle");
	System.out.println(strId);
	if (strId == null || strId.trim().equals("")) {
		out.println("ERROR ID");
		return;
	}

	int id = 0;
	try {
		id = Integer.parseInt(strId);
	} catch (NumberFormatException e) {
		out.println("ERROR ID Aagain!");
		return;
	}

	List<Article> articles = new ArrayList<Article>();
	Connection conn = DB.getConn();
	String sql = "select * from article where rootid = " + id
			+ " order by pdate asc";
	Statement stmt = DB.createStmt(conn);
	ResultSet rs = DB.executeQuery(stmt, sql);
	while (rs.next()) {
		Article a = new Article();
		a.initFromRs(rs);
		articles.add(a);
	}

	DB.close(rs);
	DB.close(conn);
	DB.close(stmt);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>平板式主题内容：articleDetail.jsp</title>
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
					</td>
				</tr>
			</tbody>
		</table>
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="1000" height="150">
			<param name="movie" value="images/zaixianluntan.swf">
			<param name="quality" value="high">
			<embed src="images/zaixianluntan.swf" quality="high"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				type="application/x-shockwave-flash" width="1000" height="150"></embed>
		</object>
		<br>
		<div id="jive-flatpage">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<p class="jive-breadcrumbs">
								<a href="articleFlat.jsp">首页</a> &#187; 帖子内容
								<a
									href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2"></a>
							</p>
							<p class="jive-page-title">
								主题:<%=articleTitle%>
							</p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons">
				<table bgcolor="#0066FF" width="100%" height="20">
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
			</div>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">

											<!-- 循环开始 -->
											<%
												for (int i = 0; i < articles.size(); i++) {
													Article a = articles.get(i);
													String floor = i == 0 ? "楼主" : "第" + i + "楼";
											%>
											<table summary="Message" border="0" cellpadding="0"
												cellspacing="0" width="100%">
												<tbody>
													<tr id="jive-message-780144" class="jive-odd" valign="top">
														<td class="jive-first" width="1%">
															<!-- 个人信息的table -->
															<table border="0" cellpadding="0" cellspacing="0"
																width="150">
																<tbody>
																	<tr>
																		<td>
																			<table border="0" cellpadding="0" cellspacing="0"
																				width="100%">
																				<tbody>
																					<tr valign="top">
																						<td style="padding: 0px;" width="1%">
																							<nobr>
																								Kevin
																							</nobr>
																						</td>
																						<td style="padding: 0px;" width="99%">
																							<img class="jive-status-level-image"
																								src="images/level3.gif" title="世界新手" alt=""
																								border="0">
																							<br>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																			<img src="images/kevin logo.gif" alt="" width="135"
																				height="60" border="0" class="jive-avatar">
																			<br>
																			<br>
																			<span class="jive-description"> 发表: 34 <br>
																				点数: 100<br> 注册: 07-5-10 <br> 访问我的Blog </span>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
														<td class="jive-last" width="99%">
															<table border="0" cellpadding="0" cellspacing="0"
																width="100%">
																<tbody>
																	<tr valign="top">
																		<td width="1%"></td>
																		<td width="97%">
																			<span class="jive-subject"><%=floor + "------" + a.getTitle()%></span>
																		</td>
																		<td class="jive-rating-buttons" nowrap="nowrap"
																			width="1%"></td>
																		<td width="1%">
																			<div class="jive-buttons">
																				<table border="0" cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td>
																								&nbsp;

																							</td>
																							<td class="jive-icon">
																								<a
																									href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootid()%>&articleTitle=<%=articleTitle%>"
																									title="回复本主题"><img
																										src="images/reply-16x16.gif" alt="回复本主题"
																										border="0" height="16" width="16"> </a>
																							</td>
																							<td class="jive-icon-label">
																								<a
																									href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootid()%>&articleTitle=<%=articleTitle%>"
																									title="回复本主题">回复</a>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4"
																			style="border-top: 1px solid rgb(204, 204, 204);">
																			<br>
																			<%=a.getCont()%>
																			<br>
																			<br>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4" style="font-size: 9pt;">
																			<img src="images/sigline.gif">
																			<br>
																			<br>
																			天助自助者！
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4"
																			style="border-top: 1px solid rgb(204, 204, 204); font-size: 9pt; table-layout: fixed;">
																			·
																			<a href="http://www.bjsxt.com"><font
																				color="#666666">http:/tianfutianshi.blog.com.cn</font>
																			</a>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
												</tbody>
											</table>
											<%
												}
											%>
											<!-- 循环结束 -->

										</div>
									</div>
								</div>
								<div class="jive-message-list-footer">
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td nowrap="nowrap" width="1%">
												</td>
												<td align="center" width="98%">
													<table border="0" cellpadding="0" cellspacing="0">
														<tbody>
															<tr>
																<td>
																	<a href="articleFlat.jsp"><img
																			src="images/arrow-left-16x16.gif" alt="返回到主题列表"
																			border="0" height="16" hspace="6" width="16"> </a>
																</td>
																<td>
																	<a href="articleFlat.jsp">返回到主题列表</a>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td nowrap="nowrap" width="1%">
													&nbsp;
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</td>
						<td width="1%">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
