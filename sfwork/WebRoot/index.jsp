<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,java.util.*,com.ComputerTrainingPlatform.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("GB18030"); //设置本页面请求的编码格式为“GB18030”

	Connection conn = DB1.getConn(); //建立与数据库的链接
	Statement stmt = DB1.createStmt(conn); //创建stmt对象
	String sql = "select * from news order by ndate"; //查询新闻news表中最后的十项记录并且按时间的倒序排列desc limit 10
	List<News> newses = new ArrayList<News>(); //创建一个List用来存放从数据库取出来的数据
	List<Notice> notices = new ArrayList<Notice>();
	ResultSet rs = DB1.executeQuery(stmt, sql);
	while (rs.next()) { //把取出的数据逐一的添加到刚刚创建List容器中
		News n = new News();
		n.initFromRs(rs);
		newses.add(n);
	}

	Statement stmt1 = DB1.createStmt(conn);
	String sql1 = "select * from notice order by notice_date desc limit 10"; //查询系统通知notice表中最后的十项记录并且按时间的倒序排列
	ResultSet rs1 = DB1.executeQuery(stmt, sql1);
	while (rs1.next()) {
		Notice no = new Notice();
		no.initFromRs(rs1);
		notices.add(no);
	}

	DB1.close(rs); //关闭数据库链接
	DB1.close(rs1);
	DB1.close(stmt);
	DB1.close(stmt1);
	DB1.close(conn);
%>
<%
	String username = (String) session.getAttribute("username");
	String userpassword = (String) session.getAttribute("userpassword");
	Integer userClass = (Integer) session.getAttribute("userClass");
	
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
	<HEAD>
		<!-- javascript用来判断用户登陆时，必须填写用户名和密码，不能有任何一项为空，否则提示用户输入相信的内容 -->
		<script type="text/javascript">		
<!-- 
	function isLegal() {
	//取到username和userpassword的值
		var u = document.getElementById("username").value;
		var p = document.getElementById("userpassword").value;
	//判断用户名和密码是否为空，如果为空给出相应的提示信息
		if(u == "") {
			alert("请输入用户名！");
			return;
		} else if(p == ""){
			alert("请输入密码！");
			return;
		}
	}
//-->
</script>
		<!-- javascript结束 -->
		<TITLE>剪纸平台</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="images/default.css" type=text/css rel=stylesheet>
		<STYLE type=text/css>
TH {
	BORDER-RIGHT: #c1dad7 1px solid;
	PADDING-RIGHT: 6px;
	BORDER-TOP: #c1dad7 1px solid;
	PADDING-LEFT: 12px;
	BACKGROUND: url(/images/bg_header.jpg) #cae8ea no-repeat;
	PADDING-BOTTOM: 6px;
	FONT: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	TEXT-TRANSFORM: uppercase;
	COLOR: #4f6b72;
	PADDING-TOP: 6px;
	BORDER-BOTTOM: #c1dad7 1px solid;
	LETTER-SPACING: 2px;
	TEXT-ALIGN: left
}

.msg {
	PADDING-RIGHT: 6px;
	PADDING-LEFT: 12px;
	FONT-SIZE: 12px;
	BACKGROUND: url(/images/bullet1.gif) #fff no-repeat;
	PADDING-BOTTOM: 6px;
	COLOR: #4f6b72;
	PADDING-TOP: 6px;
	BORDER-BOTTOM: #c1dad7 1px solid
}

.date {
	PADDING-RIGHT: 6px;
	PADDING-LEFT: 12px;
	PADDING-BOTTOM: 6px;
	COLOR: #4f6b72;
	PADDING-TOP: 6px;
	BORDER-BOTTOM: #c1dad7 1px solid
}

/*- Menu Tabs 1--------------------------- */
#tabs1 {
	float: left;
	width: 100%;
	background: #F4F7FB;
	font-size: 100%;
	line-height: normal;
	border-bottom: 1px solid #BCD2E6;
}

#tabs1 a {
	float: right;
	margin: 0;
	padding: 0 0 0 4px;
	text-decoration: none;
}

#tabs1 a span {
	float: left;
	display: block;
	padding: 5px 15px 4px 6px;
	color: #627EB7;
}

/* Commented Backslash Hack hides rule from IE5-Mac \*/
#tabs1 a span {
	float: none;
}

/* End IE5-Mac hack */
#tabs a:hover span {
	color: #627EB7;
}

#tabs1 a:hover {
	background-position: 0% -42px;
}

#tabs1 a:hover span {
	background-position: 100% -42px;
}

body {
	background-color: #CCFFFF;
}
</STYLE>
		<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
	</HEAD>
	<BODY leftMargin=0 topMargin=0>
		<!--顶部flash表格-->
		<TABLE cellSpacing=0 cellPadding=0 width=100% align=center border=0>
			<TBODY>
				<TR>
					<TD>
						<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
							<TBODY>

								<TR>
									<TD>
										<object height=150 width="100%"
											classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000>
											<param name="movie" value="images/KevinPlatform.swf">
											<param name="quality" value="high">
											<embed src="images/KevinPlatform.swf"
												type="application/x-shockwave-flash" width="100%"
												height="120"></embed>
										</object>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<!--顶部flash表格结束-->
		<TABLE class=pageborder cellSpacing=0 cellPadding=0 width=100% height="600"
			align=center bgColor=#ffffff border=1>
			<TBODY>
				<TR>
					<TD>
						<TABLE cellSpacing=1 cellPadding=0 width="100%" align=center
							border=0>
							<TBODY>
								<TR style="background-color: #F4F7FB">
									<td colSpan=2 height=24
										style="background-image: url(images/kevin logo.gif); background-position: center; background-repeat: no-repeat"></td>
									<!-- 顶部导航栏 -->
									<TD colSpan=7 height=24 id="tabs1">
									 
										<a href="message.jsp" title="留言板"><span>留言板</span> </a>
										<a href="BBS/articleFlat.jsp" title="交流社区"><span>交流社区</span>
										</a>
										<!-- <a href="onlineExam.jsp" title="剪纸实践"><span>剪纸实践</span> </a>  -->
										<a href="studyResourceJZ.jsp" title="我的剪纸"><span>我的剪纸</span> </a>
										<a href="studyResource.jsp" title="剪纸学习资源"><span>剪纸学习资源</span>
										</a>
										<a href="jpkc.jsp" title="剪纸课程"><span>剪纸课程</span> </a>
										<a href="index.jsp" title="首页"><span>首页</span> </a>
									</TD>
									<!-- 顶部导航栏结束 -->
								</TR>
								<TR>
									<TD class=border vAlign=top align=center width=170>
										<TABLE>
											<TBODY>
												<TR>
													<TD>
														<IMG height=30 src="images/login.gif" width=170>
													</TD>
												</TR>
												<TR>
													<TD>
														<FORM action=alogin.jsp method=post>
															<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
																<TBODY>
																	<TR>
																		<TD bgColor=#cccccc>
																			<TABLE cellSpacing=1 cellPadding=4 width="100%"
																				border=0>
																				<TBODY>
																					<TR>
																						<TD align=center bgColor=#efefef>
																							<!-- 左侧系统登陆表格 -->
																							<TABLE width="100%" align=center>
																								<TBODY>
																									<TR>
																										<TD>
																											用户名:
																										</TD>
																										<TD>
																										<c:if test="${username == null}">
																											<INPUT type="text" class=input size=12
																													name=username>
																										</c:if>
																										<c:if test="${username != null}">
																											<INPUT type="text" class=input size=12
																												name=username value="<%=username%>">
																										</c:if>
																										</TD>
																									</TR>
																									<TR>
																										<TD>
																											密码:
																										</TD>
																										<TD>
																										<c:if test="${userpassword == null}">
																											<INPUT type="password" class=input size=12
																													name=userpassword>
																										</c:if>
																										<c:if test="${userpassword != null}">
																											<INPUT type="password" class=input size=12
																												name=userpassword value="<%=userpassword%>">
																										</c:if>
																										</TD>
																									</TR>
																									<TR>
																										<TD colSpan=2>
																											登录身份:
																											<c:if test="${userClass == null}">
																												<SELECT id=userClass name=userClass>
																													<OPTION value=1 selected>
																														学生
																													</OPTION>
																													<OPTION value=2>
																														教师
																													</OPTION>
																													<OPTION value=3>
																														管理员
																													</OPTION>
																												</SELECT>
																											</c:if>
																											<c:if test="${userClass != null and userClass == 1}">
																												<SELECT id=userClass name=userClass>
																													<OPTION value=1 selected>
																														学生
																													</OPTION>
																													<OPTION value=2>
																														教师
																													</OPTION>
																													<OPTION value=3>
																														管理员
																													</OPTION>
																												</SELECT>
																											</c:if>
																											<c:if test="${userClass != null and userClass == 2}">
																												<SELECT id=userClass name=userClass>
																													<OPTION value=1 >
																														学生
																													</OPTION>
																													<OPTION value=2 selected>
																														教师
																													</OPTION>
																													<OPTION value=3>
																														管理员
																													</OPTION>
																												</SELECT>
																											</c:if>
																											<c:if test="${userClass != null and userClass == 3}">
																												<SELECT id=userClass name=userClass>
																													<OPTION value=1 >
																														学生
																													</OPTION>
																													<OPTION value=2>
																														教师
																													</OPTION>
																													<OPTION value=3 selected>
																														管理员
																													</OPTION>
																												</SELECT>
																											</c:if>
																										</TD>
																									</TR>
																									<TR>
																										<TD>
																											<DIV align=center>
																												<INPUT class=button type=submit value=登陆
																													name="确定" onClick="isLegal()">
																											</DIV>
																										</TD>
																										<TD>
																											<DIV align=center>
																												<a href="forgetpassword.jsp">忘记密码</a>
																											</DIV>
																										</TD>
																									</TR>
																								</TBODY>
																							</TABLE>
																							<!-- 左侧系统登陆表格结束 -->
																						</TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
														</FORM>
													</TD>
												</TR>
												<TR>
													<TD>
														<TABLE cellSpacing=0 cellPadding=0 width=100% border=0>
															<TBODY>
																<TR>
																	<TD bgColor=#cccccc width="100%">
																	<!-- 左侧教学课程，友情链接表格 -->
																		<TABLE cellSpacing=1 cellPadding=4 width="100%"
																			border=0>
																			<TBODY>
																				<TR>
																					<TD bgColor=#efefef style="line-height:150%">
																						<TABLE cellSpacing=0 cellPadding=4 width="100%"
																							border=0>
																							<TBODY>
																							</TBODY>
																						</TABLE>
																					</TD>
																				</TR>
																				<TR>
																					<TD align=center bgColor=#ffffff>
																						<TABLE cellSpacing=0 cellPadding=0 width="100%"
																							border=0>
																							<TBODY>
																								<TR>
																									<TD align=center background=images/link0.gif
																										bgColor=#efefef height=30>
																										<FONT color=#ffffff>剪纸课程</FONT>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left>
																										剪纸基础
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										剪纸设计
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										剪纸浏览
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										国家剪纸课程导航
																									</TD>
																								</TR>
																								<TR>
																									<TD align=center background=images/link1.gif
																										bgColor=#efefef height=30>
																										<font color="#ffffff">友情链接</font>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left>
																										<A href="http://www.edu.cn/" target=_blank>中国教育科研网</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.pku.edu.cn/" target=_blank>北京大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.tsinghua.edu.cn/"
																											target=_blank>清华大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.scu.edu.cn/" target=_blank>四川大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.swjtu.edu.cn/"
																											target=_blank>西南交通大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.uestc.edu.cn/"
																											target=_blank>电子科技大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.tju.edu.cn/" target=_blank>天津大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.fudan.edu.cn/"
																											target=_blank>复旦大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.nankai.edu.cn/"
																											target=_blank>南开大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.nju.edu.cn/" target=_blank>南京大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.ustc.edu.cn/"
																											target=_blank>中国科技大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.zju.edu.cn/" target=_blank>浙江大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.sjtu.edu.cn/"
																											target=_blank>上海交通大学</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.hunu.edu.cn/"
																											target=_blank>湖南大学</A>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																					</TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																		<!-- 左侧精品课程，友情链接表格结束 -->
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
									
									<TD width=4></TD>
									<TD class=border vAlign=top>
									<!-- 中间最新消息，最新通知表格 开始 -->
										<TABLE width="100%">
											<TBODY>
												<TR>
													<TD>
														<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
															<TBODY>
																<TR>
																	<TD colSpan=2>
																		<TABLE cellSpacing=0 cellPadding=0 width="100%"
																			border=0>
																			<TBODY>
																				<TR>
																					<TD background=images/bgmenu_t.gif>
																						<IMG height=11 src="images/Star.gif" width=30>
																						最新消息
																					</TD>
																					<TD align=right background=images/bgmenu_t.gif>
																						&nbsp;
																						<TABLE>
																							<TBODY>
																								<TR>
																									<TD>
																										<a href="newsmore.jsp"><IMG height=9
																												src="images/more.gif" width=27 border=0>
																										</a>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																					</TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																	</TD>
																</TR>
																<%
																	for (Iterator<News> it = newses.iterator(); it.hasNext();) {
																		News n = new News();
																		n = it.next();
																%>
																<TR>
																	<TD width="158" class=msg>
																		<a href="amanagerXWGGdetail.jsp?detId=<%=n.getId()%>"
																			target=_blank><%=n.getNewsTitle()%></A>
																	</TD>
																	<TD width="449" class=msg align="right"><%=n.getNewsDeliver()%>:
																		<span class="date"><%=new java.text.SimpleDateFormat("yy-MM-dd HH:mm:ss")
								.format(n.getNewsDate())%></span>
																	</TD>

																</TR>
																<%
																	}
																%>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
												<TR>
													<TD>
														<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
															<TBODY>
																<TR>
																	<TD colSpan=2>
																		<TABLE cellSpacing=0 cellPadding=0 width="100%"
																			border=0>
																			<TBODY>
																				<TR>
																					<TD background=images/bgmenu_t.gif>
																						<IMG height=11 src="images/Star.gif" width=30>
																						最近通知
																					</TD>
																					<TD align=right background=images/bgmenu_t.gif>
																						&nbsp;
																						<TABLE>
																							<TBODY>
																								<TR>
																									<TD>
																										<a href="noticemore.jsp"><IMG height=9
																												src="images/more.gif" width=27 border=0>
																										</a>
																									</TD>
																								</TR>
																							</TBODY>
																						</TABLE>
																					</TD>
																				</TR>
																			</TBODY>
																		</TABLE>
																	</TD>
																</TR>
																<%
																	for (Iterator<Notice> it = notices.iterator(); it.hasNext();) {
																		Notice no = new Notice();
																		no = it.next();
																%>
																<TR>
																	<TD class=msg>
																		<A href="amanagerXTTZdetail.jsp?detId=<%=no.getId()%>"
																			target=_blank><%=no.getNoticeTitle()%></A>
																	</TD>
																	<TD class=msg align="right"><%=no.getNoticeDeliver()%>:
																		<span class="date"><%=new java.text.SimpleDateFormat("yy-MM-dd HH:mm:ss")
								.format(no.getNoticeDate())%></span>
																	</TD>

																</TR>
																<%
																	}
																%>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									<!-- 中间最新消息，最新通知表格 结束 -->
									</TD>
									<TD width=4></TD>
									<!-- 右侧导航链接 -->
									<TD width=4></TD>
								</TR>
								<TR align=right>
									<TD background=images/bgmenu_t.gif colSpan=7 height=24></TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=100% align=center
			bgColor=#ffffff border=0>
			<TBODY>
				<TR>
					<TD align=center colSpan=3>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD background=images/diandian.gif height=10>&nbsp;
										
									</TD>
								</TR>
								<TR>
									<TD align=center height=30>
										Copyright@ ComputerTraining KevinPlatForm
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
	</BODY>
</HTML>
