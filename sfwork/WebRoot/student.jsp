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

	Statement stmt1 = DB1.createStmt(conn);
	String sql1 = "select * from news order by ndate desc limit 5";
	List<News> newses = new ArrayList<News>();
	ResultSet rs1 = DB1.executeQuery(stmt, sql1);
	while (rs1.next()) {
		News n = new News();
		n.initFromRs(rs1);
		newses.add(n);
	}

	DB1.close(rs1);
	DB1.close(stmt1);

	DB1.close(rs);
	DB1.close(stmt);
	DB1.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>计算机基础课程教学平台（KevinPlatform）</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="images/index_guest.css" type=text/css rel=stylesheet>
		<STYLE type=text/css>
.STYLE3 {
	font-size: 30px
}

.STYLE6 {
	font-size: 17px
}

body {
	margin-left: 0px;
	margin-right: 0px;
}

.STYLE7 {
	color: #FFFFFF
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
								<param name="movie" value="images/student.swf">
								<param name="quality" value="high">
								<embed style="margin-top: 0px" src="images/student.swf"
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
									<a href="jpkc.jsp">网络精品课程</a>
									<a href="studyResource.jsp">学习资源</a>
									<a href="BBS/articleFlat.jsp">交流社区</a>
									<a href="onlineExam.jsp">在线考试</a>
									<a href="message.jsp">留言板</a>
								</DIV>
							</TD>
							<TD width=7 background=images/info-center.jpg></TD>
							<TD width=315 background=images/info-background1.jpg>
								<DIV class=text1>
									用户名：<%=u.getUserName()%>&nbsp;&nbsp;&nbsp;&nbsp;身份： 学生
									&nbsp;&nbsp;&nbsp;&nbsp;
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
												<IMG src="images/gerenxinxi.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="studentGX.jsp">个人信息查询</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="studentXGMM.jsp">修改密码</a>
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
												<img src="images/zaixiankaoshi.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="studentLoginExam.jsp">参加考试</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg" alt="sa">
											</TD>
											<TD class=text3>
												<a href="studentCXCJ.jsp">查询成绩</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>&nbsp;
												
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
												<IMG src="images/jiaoliushequ.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="BBS/articleFlat.jsp">学习论坛</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>&nbsp;
												
											</TD>
											<TD class=text3>&nbsp;
												
											</TD>
										</TR>
										<TR>
											<TD class=dian>&nbsp;
												
											</TD>
											<TD class=text3></TD>
										</TR>
										<TR>
											<TD class=dian>&nbsp;
												
											</TD>
											<TD class=text3>&nbsp;
												
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
							<TD class=left1 width=236 background=images/left-center-bg1.jpg
								colSpan=3>&nbsp;
								
							</TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg2.jpg colSpan=3
								height=2></TD>
						</TR>
						<TR>
							<TD width=236 background=images/left-center-bg1.jpg colSpan=3>
								<TABLE id=xzzx cellSpacing=0 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=21>
												<IMG src="images/xiazaizhongxin.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="studyResource.jsp">课件</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="studyResource.jsp">网络资源</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>&nbsp;
												
											</TD>
											<TD class=text3>&nbsp;
												
											</TD>
										</TR>
										<TR>
											<TD class=dian>&nbsp;
												
											</TD>
											<TD class=text3>&nbsp;
												
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
												<span class="STYLE6"><a href="www.tjut.edu.cn"
													class="text3">天津理工大学</a>
												</span>
											</TD>
										</TR>
										<TR>
											<TD class=text3 colSpan=2>
												<a href="http://tianfutianshi.blog.com.cn" class="text3">Kevin博客</a>
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
				<TABLE height="854" cellSpacing=0 id=right-table>
					<TBODY>
						<TR>
							<TD width=48 background=images/right-top1.jpg height=40></TD>
							<TD width=90 background=images/right-top2.jpg height=40></TD>
							<TD width=169 background=images/right-top-bg1.jpg height=40></TD>
							<TD width=15 background=images/right-top-bg1.jpg height=40></TD>
							<TD width=107 background=images/right-top-bg1.jpg height=40></TD>
							<TD width=45 background=images/right-top-bg1.jpg height=40></TD>
							<TD width=41 background=images/right-top-bg1.jpg height=40></TD>
							<TD width=73 background=images/right-top-bg1.jpg height=40></TD>
							<TD width=99 background=images/right-top-bg1.jpg height=40></TD>
							<TD width=63 background=images/right-top-bg1.jpg height=40></TD>
						</TR>
						<TR>
							<TD class=left1 width=429 background=images/bg.jpg
								colSpan=5 height=169>
								<TABLE id=xtgg cellSpacing=0 border=0>
									<TBODY>
										<%
											for (Iterator<News> it = newses.iterator(); it.hasNext();) {
												News n = new News();
												n = it.next();
										%>
										<TR>
											<TD class=xtgg1 background=images/bg.jpg>
												<IMG src="images/dian.jpg">											</TD>
											<TD class=xtgg2 colSpan=2 background=images/bg.jpg>
												<a
													href="amanagerXWGGdetail.jsp?dettitle=<%=n.getNewsTitle()%>"
													target=_blank><%=n.getNewsTitle()%></A>&nbsp;&nbsp;&nbsp;<%=n.getNewsDeliver()%>:
												<span class="date"><%=n.getNewsDate()%>											</TD>
										</TR>
										<%
											}
										%>
										
									</TBODY>
								</TABLE>
							</TD>
							<TD width=45 background=images/bg.jpg height=171></TD>
							<TD width=276 background=images/bg.jpg colSpan=4
								height=169>
							</TD>
						</TR>
						<TR>
							<TD width=307 background=images/bg.jpg colSpan=3 height=16></TD>
							<TD width=167 background=images/bg.jpg colSpan=3
								height=16></TD>
							<TD width=276 background=images/bg.jpg colSpan=4 height=16></TD>
						</TR>
						<TR>
							<TD width=750 background=images/bg.jpg colSpan=10 height=26>&nbsp;
								
						  </TD>
						</TR>
						<TR>
							<TD width=750 background=images/bg.jpg colSpan=10 height=596>
								<TABLE id=kc-table cellSpacing=0 border=0></TABLE>
						  </TD>
						</TR>
					</TBODY>
			  </TABLE>
			</DIV>
			<DIV id=foot>
				<TABLE width="100%" cellSpacing=0 cellPadding=0 border=0>
					<TBODY>
						<TR>
							<TD class=foot_text background=images/right-top-bg1.jpg></TD>
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
