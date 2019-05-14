<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.kevin.bbs.*"%>
<%
	request.setCharacterEncoding("GB18030");
	
	int id = Integer.parseInt(request.getParameter("id"));
	String articleTitle = request.getParameter("articleTitle");
	int rootId = Integer.parseInt(request.getParameter("rootId"));
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
		<script type="text/javascript" src="fckeditor/fckeditor.js"></script>
		<script type="text/javascript">

window.onload = function()
{
	// Automatically calculates the editor base path based on the _samples directory.
	// This is usefull only for these samples. A real application should use something like this:
	// oFCKeditor.BasePath = '/fckeditor/' ;	// '/fckeditor/' is the default value.
	//var sBasePath = document.location.pathname.substring(0,document.location.pathname.lastIndexOf('_samples')) ;
	var sBasePath = "<%=request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/fckeditor/"%>"
	var oFCKeditor = new FCKeditor( 'cont' ) ;
	oFCKeditor.BasePath	= sBasePath ;
	oFCKeditor.ReplaceTextarea() ;
}

	</script>
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
								<a href="articleFlat.jsp">首页</a> &#187; 回复主题
							<a
									href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1"></a></p>
							<p class="jive-page-title">
								主题:<%=articleTitle %>
							</p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
		  <div class="jive-buttons"><table bgcolor="#0066FF" width="100%" height="20"><tr><td>&nbsp;</td></tr></table></div>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">
											<form action="replyDeal.jsp" method="post">
											<input type="hidden" name="id" value="<%=id %>" />
											<input type="hidden" name="articleTitle" value="<%=articleTitle %>" />
												<input type="hidden" name="pid" value="<%=id%>" />
												<input type="hidden" name="rootId" value="<%=rootId%>" />
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
																		href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20"><img
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
												<td nowrap="nowrap" width="1%">&nbsp;
													
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