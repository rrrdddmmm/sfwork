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
	request.setCharacterEncoding("GB18030");
	
	int j = 1;
	String scoreNumber = request.getParameter("scorenumber");
	System.out.println(scoreNumber);
	Connection conn = DB1.getConn();
	//int inval = Integer.parseInt(request.getParameter("inval"));

	Statement stmt1 = DB1.createStmt(conn);
	System.out.println(username);
	String sql1 = "select * from user where username = '" + username
			+ "'";
	ResultSet rs1 = DB1.executeQuery(stmt1, sql1);
	rs1.next();
	User u = new User();
	u.initFromRs(rs1);

	Statement stmt2 = DB1.createStmt(conn);
	String sql2 = "select * from score where score_number = '"
			+ scoreNumber + "'";
	ResultSet rs2 = DB1.executeQuery(stmt2, sql2);
	rs2.next();
	Score s = new Score();
	s.initFromRs(rs2);
	
	String testPaperNo = s.getTestPaperNo();
	Statement stmttp = DB1.createStmt(conn);
	String sqltp = "select * from testpaper where peapernumber = '" + testPaperNo + "'";
	ResultSet rstp = DB1.executeQuery(stmttp, sqltp);
	rstp.next();
	TestPaper tp = new TestPaper();
	tp.initFromRs(rstp);
	int simpleTotalNumber = tp.getTpSimpleEasy() + tp.getTpSimpleNormal() + tp.getTpSimpleDifficulry();
	
	Statement stmtss = DB1.createStmt(conn);
	String sqlss = "select * from scoresimple where score_number = '" + scoreNumber + "'";
	List<ScoreSimple> sss = new ArrayList<ScoreSimple>();
	ResultSet rsss = DB1.executeQuery(stmtss, sqlss);
	while(rsss.next()) {
		ScoreSimple ss = new ScoreSimple();
		ss.initFromRs(rsss);
		sss.add(ss);
	}
	
	

	DB1.close(rstp);
	DB1.close(stmttp);
	DB1.close(rsss);
	DB1.close(stmtss);
	DB1.close(rs2);
	DB1.close(stmt2);
	DB1.close(rs1);
	DB1.close(stmt1);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>计算机基础课程教学平台（KevinPlatform）</TITLE>
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
									用户名：<%=u.getUserName()%>&nbsp;身份： 教师 &nbsp;
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
												<IMG src="images/tongzhiguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="teacherXTTZ.jsp">发布通知</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="teacherXTTZdelete.jsp">管理通知</a>
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
												<img src="images/kaoshiguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="teacherOnlienExam.jsp">试卷管理</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg" alt="sa">
											</TD>
											<TD class=text3>
												<a href="teacherAddTestPaper.jsp">添加试卷</a>
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
												<IMG src="images/ziyuanguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="teacherSC.jsp">上传课件资源</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												&nbsp;
											</TD>
											<TD class=text3>
												&nbsp;
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
				<TABLE id=right-table cellSpacing=0>
					<TBODY>
						<TR>
							<TD height=40 colspan="10" background=images/right-top-bg3.jpg
								align="center">
								<span class="STYLE8">试卷管理</span>
							</TD>
						</TR>
						<TR>
							<TD width="750" colSpan=10 background=images/bg.jpg class=left1>
								<form action="ateacherOnLienExamList.jsp" method="post">
								<input type="hidden" name="simpleTotalNumber" value="<%=simpleTotalNumber %>"/>
									<TABLE width="100%" border=2 align="center" cellSpacing=0>
										<TBODY>
											<TR>
												<TD class=text4 colspan="2" align="center" bgcolor="#0099FF">
													阅卷管理
												</TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right">
													学生学号：
												</TD>
												<TD class=text4><%=s.getScoreNumber()%></TD>
												<input type="hidden" name="scorenumber"
													value="<%=s.getScoreNumber()%>" />
											</TR>
											<TR>
												<TD class=text4 width="132" align="right">
													学生单项选择题得分：
												</TD>
												<TD class=text4><%=s.getScoreSgrade()%></TD>
												<input type="hidden" name="selectTotalScore"
													value="<%=s.getScoreSgrade()%>" />
											</TR>
											<TR>
												<TD class=text4 width="132" align="right" valign="top">
													&nbsp;
												</TD>
												<TD>
													&nbsp;
												</TD>
											</TR>
											<%
												for(Iterator<ScoreSimple> it = sss.iterator(); it.hasNext();) {
													ScoreSimple ss = new ScoreSimple();
													ss = it.next();
													String title = ss.getTitle();
											%>
											<TR>
												<TD class=text4 width="132" align="right">
													问答题<%=j %>题目：
												</TD>
												<TD class=text4><%=ss.getTitle()%></TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right" valign="top">
													学生答案：
												</TD>
												<TD class=text4><%=ss.getAnswer()%></TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right" valign="top">
													参考答案：
													<%
														Statement stmt5 = DB1.createStmt(conn);
														String sql5 = "select * from simplequestion where title = '" + title + "'" ;
														ResultSet rs5 = DB1.executeQuery(stmt5, sql5);
														rs5.next();
														SimpleQuestion sq = new SimpleQuestion();
														sq.initFromRs(rs5);
														
													%>
												</TD>
												<TD class=text4><%=sq.getAnswer() %></TD>
											</TR>
											<TR>
												<TD class=text4 width="132" align="right" valign="top">
													评分：
												</TD>
												<TD>
													<input type="text" name="simpleScore<%=j %>" />
												</TD>
											</TR>
											<%
													j++;
												}
											%>
											<TR>
												<TD width="132" align="right"></TD>
												<TD>
													<input type="submit" value="录入成绩" />
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
								su
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
