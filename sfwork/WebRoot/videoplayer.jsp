<%@ page language="java" import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
System.out.println(path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	//设置编码格式为GB18030
	request.setCharacterEncoding("GB18030");
	//得到课程类型，链接数据库取出相应的课程类型中的数据
	int courseType = Integer.parseInt(request
			.getParameter("courseType"));
	int detId = Integer.parseInt(request.getParameter("detId"));
	String detid =request.getParameter("detId");
	System.out.println(detId);
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	String sql = "select * from course where id = '" + detId
			+ "'";
	ResultSet rs = DB1.executeQuery(stmt, sql);
	rs.next();
	Course c = new Course();
	c.initFromRs(rs);
		String filename=c.getFilename();
	System.out.println(filename);
	//关闭数据库连接
	DB1.close(rs);
	DB1.close(stmt);
	DB1.close(conn);
%>


<!DOCTYPE html>
<html>
<head>
<title>算法分析与设计教学网站</title>
<link rel="stylesheet" type="text/css" href="Html5Video/css/video.css" media="all">
<script type="text/javascript" src="Html5Video/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Html5Video/js/jquery.plugin.js"></script>
<script type="text/javascript" src="Html5Video/js/jquery.video.js"></script>
<script type="text/javascript">
	$(function(){
			var s= $(".video_container").html();
			$(".video_container").html5video({
				width:800,               //Number型，播放器宽度。
				height:400,              //Number型，播放器高度。
				src:s,                  //String型，要播放的视频的 URL。
				poster:"http://oss.aliyuncs.com/zihanblog/file/video_poster.png",               //String型，在视频播放之前所显示的图片的 URL。
				loop:false,              //Boolean型，则当媒介文件完成播放后再次开始播放。
				preload:false,            //Boolean型，如果出现该属性，则视频在页面加载时进行加载，并预备播放。
				notsuportmsg:"您的浏览器不支持html5，无法使用该插件！"    //String型，浏览器不支持video标签时的提示，可使用html标签。			
			});

	});
</script>
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
										<a href="index.jsp" class="STYLE7">首页</a>
										<!-- <a href="onlineExam.jsp" title="剪纸实践"><span>剪纸实践</span> </a>  -->
										<a href="#" title="剪纸实践"><span>剪纸实践</span> </a>
										<a href="studyResource.jsp" title="剪纸学习资源"><span>剪纸学习资源</span></a>
										<a href="jpkc.jsp" title="剪纸课程"><span>剪纸课程</span> </a>
										<a href="BBS/articleFlat.jsp">交流社区</a>
										<a href="message.jsp">留言板</a>
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
																							<TABLE width="100%" align=center>
																								<TBODY>
																									<TR>
																										<TD>
																											用户名:
																										</TD>
																										<TD>
																											<INPUT type="text" class=input size=12
																												name=username>
																										</TD>
																									</TR>
																									<TR>
																										<TD>
																											密码:
																										</TD>
																										<TD>
																											<INPUT class=input type="password" size=12
																												name=userpassword>
																										</TD>
																									</TR>
																									<TR>
																										<TD colSpan=2>
																											登录身份:
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
																										</TD>
																									</TR>
																									<TR>
																										<TD>
																											<DIV align=center>
																												<INPUT class=button type=submit value=确定
																													name="确定" onClick="isLegal()">
																											</DIV>
																										</TD>
																										<TD>
																											<DIV align=center>
																												<INPUT class=button type=reset value=重置
																													name=重置>
																											</DIV>
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
																										剪纸实践
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
																						background=images/sub2_21.gif>
																						&nbsp;
																						<SPAN class="STYLE1"
																							style="color: #FF9900; size: 11">
																							<%
																								if (courseType == 1) {
																							%> 初级课程 <%
																								} else if (courseType == 2) {
																							%> 中级课程 <%
																								} else {
																							%> 高级课程 <%
																								}
																							%> </SPAN>
																					</TD>
																					<TD width="579" align=right>
																						<TABLE>
																							<TBODY>
																								<TR>
																									<TD>
																										<IMG height=9 src="images/more.gif" width=27
																											border=0>
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
<TR>
	
		<TD colSpan=2 align="center"><div class="video_container"hidden="true"style="margin:0auto"><%=path%>/upload/<%=filename%>
		</div></TD>															
 </TR>
																<TR>
																
																	<TD width="492" align="center" class=msg>课程名：<%=c.getCourseTitle()%></TD>
																	<TD class=date noWrap width=285 >
																		主讲老师：<%=c.getCourseTeacher()%></TD>
																</TR>

																<TR>
																	<TD align="center" colspan=2 class=msg>课程简介： <%=c.getCourseInfo()%></TD>
																		
																</TR>
															
																
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
									<TD width=4></TD>
									<TD width=4></TD>
								</TR>
								<TR align=right>
									<TD background=images/bgmenu_t.gif colSpan=7 height=24></TD>
								</TR>
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
									<TD background=images/diandian.gif height=10>
										&nbsp;
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
