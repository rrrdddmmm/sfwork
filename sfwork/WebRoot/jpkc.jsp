<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,java.util.*,com.ComputerTrainingPlatform.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//设置编码格式为GB18030
	request.setCharacterEncoding("GB18030");
	//建立数据库连接，从数据库中出course表格中的数据
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	//取出课程表中类型为1，国家级的精品课程
	String sql1 = "select * from course where courseType = 1";
	ResultSet rs1 = DB1.executeQuery(stmt, sql1);
	//将取出来的数据装在一个ArrayList，国家级精品课程中courses1对象中
	List<Course> courses1 = new ArrayList<Course>();
	while (rs1.next()) {
		Course c = new Course();
		c.initFromRs(rs1);
		courses1.add(c);
	}
	//取出课程表中类型为2，天津市级的精品课程
	String sql2 = "select * from course where courseType = 2";
	ResultSet rs2 = DB1.executeQuery(stmt, sql2);
	//将取出来的数据装在一个ArrayList，天津市级精品课程中courses2对象中
	List<Course> courses2 = new ArrayList<Course>();
	while (rs2.next()) {
		Course c = new Course();
		c.initFromRs(rs2);
		courses2.add(c);
	}
	//取出课程表中类型为3，校级的精品课程
	String sql3 = "select * from course where courseType = 3";
	ResultSet rs3 = DB1.executeQuery(stmt, sql3);
	//将取出来的数据装在一个ArrayList，校级精品课程中courses3对象中
	List<Course> courses3 = new ArrayList<Course>();
	while (rs3.next()) {
		Course c = new Course();
		c.initFromRs(rs3);
		courses3.add(c);
	}

	//关闭数据库链接
	DB1.close(rs1);
	DB1.close(rs2);
	DB1.close(rs3);
	DB1.close(stmt);
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
		<TITLE>计算机基础课程教学平台（KevinPlatform）</TITLE>
		<script type="text/javascript">
<!--
	function isLegal() {
		var u = document.getElementById("username").value;
		var p = document.getElementById("userpassword").value;
		
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
 #course{
background: url(images/sub2_21.gif) #fff no-repeat;
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
	font-size: 93%;
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

.STYLE1 {
	font-size: 15px
}
</STYLE>
		<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
	</HEAD>
	<BODY leftMargin=0 topMargin=0>
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
											<param name="movie" value="images/jpkc.swf">
											<param name="quality" value="high">
											<embed src="images/jpkc.swf" 
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
		<TABLE class=pageborder cellSpacing=0 cellPadding=0 width=100%
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
									<TD colSpan=7 height=24 id="tabs1">
										<a href="message.jsp" title="留言板"><span>留言板</span>
										</a>
										<a href="BBS/articleFlat.jsp" title="交流社区"><span>交流社区</span>
										</a>
										<!-- <a href="onlineExam.jsp" title="剪纸实践"><span>剪纸实践</span> </a>  -->
										<a href="studyResourceJZ.jsp" title="我的剪纸"><span>我的剪纸</span> </a>
										<a href="studyResource.jsp" title="剪纸学习资源"><span>剪纸学习资源</span>
										</a>
										<a href="jpkc.jsp" title="剪纸课程"><span>剪纸课程</span>
										</a>
										<a href="index.jsp" title="首页"><span>首页</span>
										</a>
									</TD>
								</TR>
								<TR>
									<TD class=border vAlign=top align=center width=300>
										<TABLE>
											<TBODY>
												<TR>
													<TD>
														<IMG height=30 src="images/login.gif" width=153>
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
														<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
															<TBODY>
																<TR>
																	<TD bgColor=#cccccc>
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
																									<TD background=images/link0.gif bgColor=#efefef
																										height=30>
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
																									<TD background=images/link1.gif bgColor=#efefef
																										height=30>
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
																						</TABLE>
																					</TD>
																				</TR>
																		</TABLE>
																	</TD>
																</TR>
														</TABLE>
													</TD>
												</TR>
										</TABLE>
									</TD>
									<TD width=4></TD>
									<TD class=border vAlign=top>
										<TABLE width="100%">
											<TBODY>
												<TR>
													<TD>
														<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
															<TBODY>
																<TR>
																	<TD colSpan=2>
																		<TABLE width="100%" height="36" border=0 cellPadding=0
																			cellSpacing=0>
																			<TBODY>
																				<TR>
																					<TD width="198" height="34"
																					id="course">
																						&nbsp;
																						<SPAN class="STYLE1"
																							style="color: #FF9900; size: 11">初级课程</SPAN>
																					</TD>
																					<TD width="579" align=right>
																						<TABLE>
																							<TBODY>
																								<TR>
																									<TD>&nbsp;</TD>
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
																	//遍历courses1，国家级精品课程中的数据
																	for (Iterator<Course> it = courses1.iterator(); it.hasNext();) {
																		Course c1 = new Course();
																		c1 = it.next();
																%>
																<TR>
																	<TD width="203" class=msg>
																		<A
																			href="jpkcDetail.jsp?detId=<%=c1.getId()%>&courseType=1"
																			target=_blank><%=c1.getCourseTitle()%></A>
																	</TD>
																	<TD class=date noWrap width="233">
																		主讲老师：<%=c1.getCourseTeacher()%></TD>
                                                                     <TD class=date  width="272"><a href="videoplayer.jsp?detId=<%=c1.getId()%>&courseType=<%=c1.getCourseType()%>" ><span>播放</span></a></TD>   
																		
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
																		<TABLE width="100%" height="36" border=0 cellPadding=0
																			cellSpacing=0>
																			<TBODY>
																				<TR>
																					<TD width="198" height="34"
																						id="course">
																						&nbsp;
																						<SPAN class="STYLE1"
																							style="color: #FF9900; size: 11">中级课程</SPAN>
																					</TD>
																					<TD width="575" align=right>
																						<TABLE>
																							<TBODY>
																								<TR>
																									<TD>&nbsp;</TD>
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
																	for (Iterator<Course> it = courses2.iterator(); it.hasNext();) {
																		Course c2 = new Course();
																		c2 = it.next();
																%>
																<TR>
																	<TD width="203" class=msg>
																		<A
																			href="jpkcDetail.jsp?detId=<%=c2.getId()%>&courseType=2"
																			target=_blank><%=c2.getCourseTitle()%></A>
																	</TD>
																	<TD class=date noWrap width="233">
																		主讲老师：<%=c2.getCourseTeacher()%></TD>
                                                                        <TD class=date  width="272"><a href="videoplayer.jsp?detId=<%=c2.getId()%>&courseType=<%=c2.getCourseType()%>" ><span>播放</span></a></TD>   
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
																		<TABLE width="100%" height="36" border=0 cellPadding=0
																			cellSpacing=0>
																			<TBODY>
																				<TR>
																					<TD width="198" height="34"
																						id="course">
																						&nbsp;
																						<SPAN class="STYLE1"
																							style="color: #FF9900; size: 11">高级课程</SPAN>
																					</TD>
																					<TD width="575" align=right>
																						<TABLE>
																							<TBODY>
																								<TR>
																									<TD>&nbsp;</TD>
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
																	for (Iterator<Course> it = courses3.iterator(); it.hasNext();) {
																		Course c3 = new Course();
																		c3 = it.next();
																%>
																<TR>
																	<TD width="202" class=msg>
																		<A
																			href="jpkcDetail.jsp?detId=<%=c3.getId()%>&courseType=3"
																			target=_blank><%=c3.getCourseTitle()%></A>
																	</TD>
																	<TD class=date noWrap width="236">
																		主讲老师：<%=c3.getCourseTeacher()%></TD>
                                                                        <TD class=date  width="270"> <a href="videoplayer.jsp?detId=<%=c3.getId()%>&courseType=<%=c3.getCourseType()%>" ><span>播放</span></a></TD>   
																</TR>
																<%
																	}
																%>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
												<!--公共通知-->
											</TBODY>
										</TABLE>
									</TD>
									<!--end of center-->
									<TD width=4></TD>
									<!--space-->

									<TD width=4></TD>
									<!--space-->
								</TR>
								<TR align=right>
									<TD background=images/bgmenu_t.gif colSpan=7 height=24></TD>
								</TR>
						</TABLE>
						<!--主要内容的外边框-->
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<!-- end of center-->
		<!--bottom-->
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
