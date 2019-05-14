<%@ page language="java"
	import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*"
	pageEncoding="GB18030"%>

<script type="text/javascript">
<!--
	function delayURL(url, time) {
	var delay = document.getElementById("time").innerHTML;
	if(delay > 0) {
		delay--;
		document.getElementById("time").innerHTML = delay;
	} else {
		window.top.location.href = url;
		
	}
    setTimeout("delayURL('" + url + "')", 1000);
}
//-->
</script>

<%
	request.setCharacterEncoding("GB18030");
	String username = (String) session.getAttribute("username");
	if (username == null) {
%>
<h2>
	<i>您还没有登陆！请登录后访问本页面！</i>
</h2>
<br>
<span id="time" style="background: red">5</span>
秒后自动跳转，如果不跳转，请点击下面链接
<a href="index.jsp">返回首页</a>
<script type="text/javascript">
	delayURL("index.jsp", 3000);
</script>
<%
	return;
	}
%>
<%
	Connection conn = DB1.getConn();
	//int inval = Integer.parseInt(request.getParameter("inval"));
	Statement stmt = DB1.createStmt(conn);
	System.out.println(username);
	String sql = "select * from user where username = '" + username
			+ "'";
	ResultSet rs = DB1.executeQuery(stmt, sql);
	rs.next();
	User u = new User();
	u.initFromRs(rs);

	DB1.close(rs);
	DB1.close(stmt);
	DB1.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>剪纸基础在线教育平台</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="images/index_guest.css" type=text/css rel=stylesheet>
		<STYLE type=text/css>
.STYLE6 {
	font-size: 17px
}

body {
	margin-left: 0px;
	margin-right: 0px;
	background-image: url(images/bg.jpg);
}

.STYLE7 {
	color: #FFFFFF
}

.STYLE8 {
	font-size: 15px;
	font-weight: bold;
}
</STYLE>

		<SCRIPT language=JavaScript>
function opend(url) {
  var newwin=window.open(url,"NewWin","toolbar=no,resizable=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,top=50,left=100,width=800,height=250");
   return false;
}
function opene(url) {
  var newwin=window.open(url,"NewWin","toolbar=no,resizable=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,top=50,left=100,width=800,height=350");
   return false;
}
function openf(url) {
  var newwin=window.open(url,"NewWin","toolbar=no,resizable=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,top=50,left=100,width=700,height=400");
   return false;
}
</SCRIPT>

		<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
	</HEAD>
	<BODY>
		<DIV id=main>
			<DIV id=banner>
				<table cellpadding="0" cellspacing="0" width="100%" border="0"
					height="100%">
					<tr>
						<td>
							<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
								codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
								width="100%" height="100%">
								<param name="movie" value="images/guanlixitong.swf">
								<param name="quality" value="high">
								<embed style="margin-top: 0px" src="images/guanlixitong.swf"
									quality="high"
									pluginspage="http://www.macromedia.com/go/getflashplayer"
									type="application/x-shockwave-flash" width="1000" height="120"></embed>
							</object>
						</td>
					</tr>
				</table>
			</DIV>
			<DIV id=info>
				<TABLE id=infotable cellSpacing=0 cellpadding="0" border=0>
					<TBODY>
						<TR>
							<TD width=30 background=images/info-left.jpg></TD>
							<TD width=614 background=images/info-background2.jpg>
								<DIV class=text1>
									<a href="index.jsp" class="STYLE7">首页</a>
									<a href="studyResource.jsp" title="剪纸学习资源"><span>剪纸学习资源</span></a>
									<a href="jpkc.jsp" title="剪纸课程"><span>剪纸课程</span> </a>
									<a href="BBS/articleFlat.jsp">交流社区</a>
									<a href="message.jsp">留言板</a>
								</DIV>
							</TD>
							<TD width=7 background=images/info-center.jpg></TD>
							<TD width=315 background=images/info-background1.jpg>
								<DIV class=text1>
									用户名：<%=u.getUserName()%>&nbsp;身份： 管理员 &nbsp;
									<A class=white12 href="index.jsp" target=_self> 退出系统 </A>
								</DIV>
							</TD>
							<TD width=35 background=images/info-right.jpg></TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
			<DIV id=left>
				<TABLE id=inv cellSpacing=0>
					<TBODY>
						<TR>
							<TD width=57 background=images/left-top1.jpg height=31></TD>
							<TD width=132 background=images/left-top-bg.jpg height=31></TD>
							<TD width=47 background=images/left-top2.jpg height=31></TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg1.jpg colSpan=3>
								<TABLE id=wlkc cellSpacing=0 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=20>
												<IMG src="images/xinxiguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="managerXWGG.jsp">新闻公告</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="managerXTTZ.jsp">系统通知</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian></TD>
											<TD class=text3></TD>
										</TR>
										<TR>
											<TD class=dian></TD>
											<TD class=text3></TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg2.jpg colSpan=3
								height=2></TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg1.jpg colSpan=3>
								<TABLE id=xxzy cellSpacing=0 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=20>
												<img src="images/xueshengguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="managerTJXS.jsp">添加学生资料</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg" alt="sa">
											</TD>
											<TD class=text3>
												<a href="managerXGXS.jsp">修改学生资料</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												&nbsp;
											</TD>
											<TD class=text3></TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg2.jpg colSpan=3></TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg1.jpg colSpan=3>
								<TABLE id=jlsq cellSpacing=0 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=20>
												<IMG src="images/jiaoshiguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="managerTJJS.jsp">添加教师资料</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="managerXGJS.jsp">修改教师资料</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												&nbsp;
											</TD>
											<TD class=text3></TD>
										</TR>
										<TR>
											<TD class=dian>
												&nbsp;
											</TD>
											<TD class=text3>
												&nbsp;
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg1.jpg colSpan=3>
								<TABLE id=jlsq cellSpacing=0 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=20>
												<IMG src="images/ziyuanguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="managerSC.jsp">上传课件资源</a>
											</TD>
										</TR>
										<TR>
											
										</TR>
										<TR>
											
										</TR>
										<TR>
											<TD class=dian>
												&nbsp;
											</TD>
											<TD class=text3>
												&nbsp;
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg2.jpg colSpan=3
								height=2></TD>
						</TR>

						<TR>
							<TD width=236 background=images/left-center-bg2.jpg colSpan=3
								height=2></TD>
						</TR>

						<TR>
							<TD width=236 background=images/left-center-bg2.jpg colSpan=3
								height=2></TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg1.jpg colSpan=3
								height=84>
								<TABLE id=yqlj cellSpacing=0 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=21>
												<IMG src="images/youqinglianjie.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=no2 colSpan=2></TD>
										</TR>
										<TR>
											<TD class=text3 colSpan=2>
												<span class="STYLE6"><a href="#"
													class="text3">西安科技大学</a> </span>
											</TD>
										</TR>
										
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg2.jpg colSpan=3
								height=2></TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
			<DIV id=center>
				<TABLE id=center-table cellSpacing=0>
					<TBODY>
						<TR>
							<TD width=17 background=images/center-bg0.jpg height=6></TD>
						</TR>
						<TR>
							<TD width=17 background=images/center-bg1.jpg height=123></TD>
						</TR>
						<TR>
							<TD width=17 background=images/center-bg2.jpg height=25></TD>
						</TR>
						<TR>
							<TD width=17 background=images/center-bg3.jpg height=750></TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
			<DIV id=right>
				<TABLE id=right-table cellSpacing=0>
					<TBODY>
						<TR>
							<TD height=40 colspan="10" background=images/right-top-bg3.jpg
								align="center">
								<span class="STYLE8">添加学生信息</span>
							</TD>
						</TR>
						<TR>
							<TD width="750" colSpan=10 background=images/bg.jpg class=left1
								align="center">
								<form action="amanagerTJXS.jsp" method="post">
									<TABLE width="500" border=2 align="center" cellSpacing=0>
										<TBODY>
											<TR>
												<TD class=text4 colspan="2" align="center" bgcolor="#0099FF">
													添加学生信息
												</TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right">
													姓名：
												</TD>
												<TD>
													<input type="text" name="name" />
												</TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right">
													学号：
												</TD>
												<TD>
													<input type="text" name="number" />
												</TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right">
													Email：
												</TD>
												<TD>
													<input type="text" name="email" />
												</TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right">
													性别：
												</TD>
												<TD>
													<select name=sex>
														<option value="男" >男</option>
														<option value="女">女</option>
													</select>
												</TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right" valign="top">
													班级：
												</TD>
												<TD>
													<select name=studentclass>
														<option value="计算机一班" >计算机一班</option>
														<option value="计算机二班">计算机二班</option>
														<option value="计算机三班">计算机三班</option>
														<option value="计科一班">计科一班</option>
														<option value="计科二班">计科二班</option>
													</select>
												</TD>
											</TR>
											<TR>
												<TD width="132" align="right"></TD>
												<TD>
													<input name="submit" type="submit" value="点击添加" />
													<input type="submit" value="重新输入">
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</form>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
			<DIV id=foot>
				<TABLE width="100%" cellSpacing=0 cellPadding=0 border=0>
					<TBODY>
						<TR>
							<TD class=foot_text background=images/right-top-bg1.jpg>
							</TD>
						</TR>
						<TR>
							<TD class=foot_text>
								Copyright@KevinPlatform
							</TD>
						</TR>
						<TR>
							<TD class=foot_text>
								KevinKevinPlatform Email:wuguangyuan757@sina.com
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
		</DIV>
	</BODY>
</HTML>
