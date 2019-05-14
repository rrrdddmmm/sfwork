<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.kevin.bbs.*,java.util.*"%>

<%
	//判断是否已经用户是否已经登陆
	boolean logined = false;
	String adminLogined = (String) session.getAttribute("adminLogined");
	if (adminLogined != null && adminLogined.trim().equals("true")) {
		logined = true;
	}
%>
<%
	//设置编码格式为GB18030
	request.setCharacterEncoding("GB18030");
	
	//页面分页代码
	String strPageNo = request.getParameter("pageNo");
	//定以页码变量pageNo
	int pageNo;
	//定义每页显示的记录 PAGE_SIZE
	final int PAGE_SIZE = 10;
	if (strPageNo == null || strPageNo.trim().equals("")) {
		pageNo = 1;
	} else {
		try {
			pageNo = Integer.parseInt(strPageNo.trim());
		} catch (NumberFormatException e) {
			pageNo = 1;
		}
		if (pageNo <= 0) {
			pageNo = 1;
		}
	}
%>
<%
	//连接数据库，取出articel中的数据，存放到ArrayList articels中。
	List<Article> articles = new ArrayList<Article>();
	
	//链接数据库查询出article表中一共有多少条记录
	Connection conn = DB.getConn();
	Statement stmtCount = DB.createStmt(conn);
	ResultSet rsCount = DB.executeQuery(stmtCount,
			"select count(*) from article where pid = 0");
	rsCount.next();
	int totalRecords = rsCount.getInt(1);
	//通过算法计算出一共分多少页显示
	int totalPages = totalRecords % PAGE_SIZE == 0 ? totalRecords
			/ PAGE_SIZE : totalRecords / PAGE_SIZE + 1;
	if (pageNo > totalPages) {
		pageNo = totalPages;
	}

	int startPos = (pageNo - 1) * PAGE_SIZE;

	Statement stmt = DB.createStmt(conn);
	//从数据库article表中分页取出数据
	ResultSet rs = DB.executeQuery(stmt,
			"select * from article where pid = 0 order by pdate desc limit "
					+ startPos + "," + PAGE_SIZE);
	while (rs.next()) {
		Article a = new Article();
		a.initFromRs(rs);
		articles.add(a);
	}

	//关闭数据库链接
	DB.close(rsCount);
	DB.close(stmtCount);
	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>计算机基础教学平台-在线论坛</title>
		<meta http-equiv="content-type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="images/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="images/global.js"></script>
		<link rel="alternate" type="application/rss+xml" title="RSS"
			href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?forumID=20">
		<script language="JavaScript" type="text/javascript"
			src="images/common.js"></script>

	</head>
	<body>
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="1000" height="150">
			<param name="movie" value="images/zaixianluntan.swf">
			<param name="quality" value="high">
			<embed src="images/zaixianluntan.swf" quality="high"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				type="application/x-shockwave-flash" width="1000" height="150"></embed>
		</object>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<div id="jive-forumpage">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="98%">
							<p class="jive-breadcrumbs">
								论坛: 计算机基础课网络教学平台（KevinPlatform）
							</p>
							<p class="jive-description">
								探讨网络课程的相关问题，共同交流提高，谢绝任何形式的广告，一经发现，立刻删除！
							</p>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons">
				<table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td class="jive-icon">
								<a href="post.jsp"><img src="images/post-16x16.gif"
										alt="发表新主题" border="0" height="16" width="16"> </a>
							</td>
							<td class="jive-icon-label">
								<a id="jive-post-thread" href="post.jsp">发表新主题</a>
								<a id="jive-post-thread" href="login.jsp">管理员登陆</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<table border="0" cellpadding="3" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="330">
							<span class="nobreak"> 共<%=totalPages%>页 第<%=pageNo%>页 - <span
								class="jive-paginator"> [ <a
									href="articleFlat.jsp?pageNo=1" class="">首页</a> | <a
									href="articleFlat.jsp?pageNo=<%=pageNo - 1%>">上一页</a> <a
									href="articleFlat.jsp?pageNo=<%=pageNo + 1%>">下一页</a> |<a
									href="articleFlat.jsp?pageNo=<%=totalPages%>" class="">尾页</a> ]
							</span> </span>
						</td>
						<td width="515">
							<form name="form1" style="size: 10" action="articleFlat.jsp">
								<select name="pageNo" onChange="document.form1.submit()">
									<%
										for (int i = 1; i <= totalPages; i++) {
									%>
									<option value=<%=i%> <%=(pageNo == i) ? "selected" : ""%>>
										第<%=i%>页
									</option>
									<%
										}
									%>
								</select>
							</form>
						</td>
					</tr>
				</tbody>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div class="jive-thread-list">
								<div class="jive-table">
									<table summary="List of threads" cellpadding="0"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th class="jive-first" colspan="3">
													主题
												</th>



												<th class="jive-last" nowrap="nowrap">
													发帖时间
												</th>
											</tr>
										</thead>
										<tbody>
											<%
												int lineNumber = 0;
												for (Iterator<Article> it = articles.iterator(); it.hasNext();) {
													Article a = it.next();
													//String preStr = "";
													//for (int i = 0; i < a.getGrade(); i++) {
													//preStr += "***";
													//}

													String classStr = lineNumber % 2 == 0 ? "jive-even"
															: "jive-odd";
											%>
											<tr class="<%=classStr%>">
												<td class="jive-first" nowrap="nowrap" width="1%">
													<div class="jive-bullet">
														<img src="images/read-16x16.gif" alt="已读" border="0"
															height="16" width="16">
														<!-- div-->
													</div>
												</td>
												<td nowrap="nowrap" width="1%">
													<%
														String url = request.getScheme() + "://"
																	+ request.getServerName() + ":"
																	+ request.getServerPort();
															url += request.getContextPath();
															url += request.getServletPath();
															url += request.getQueryString() == null ? "" : ("?" + request
																	.getQueryString());

															System.out.println(url);
															System.out.println(request.getRequestURI());
															System.out.println(request.getRequestURL());
													%>
													<%
														if (logined) {
													%>
													<a href="modify.jsp?id=<%=a.getId()%>">MOD</a>
													<a
														href="delete.jsp?id=<%=a.getId()%>&isLeaf=<%=a.isLeaf()%>&pid=<%=a.getPid()%>&from=<%=url%>">DEL</a>
													<%
														}
													%>
												</td>
												<td class="jive-thread-name" width="95%">
													<a id="jive-thread-1"
														href="articleDetailFlat.jsp?id=<%=a.getId()%>&articleTitle=<%=a.getTitle()%>"><%=a.getTitle()%></a>
												</td>



												<td class="jive-last" nowrap="nowrap" width="1%">
													<div class="jive-last-post">
														<%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
								.format(a.getPdate())%>
													</div>
												</td>
											</tr>
											<%
												lineNumber++;
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
							<div class="jive-legend"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<br>
		</div>
	</body>
</html>
