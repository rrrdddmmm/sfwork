<%@ page language="java"
	import="java.sql.*,com.ComputerTrainingPlatform.*"
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
	<i>����û�е�½�����¼����ʱ�ҳ�棡</i>
</h2>
<br>
<span id="time" style="background: red">5</span>
����Զ���ת���������ת��������������
<a href="index.jsp">������ҳ</a>
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

	//Statement stmt1 = DB1.createStmt(conn);
	//String sql1 = "select * from user where username = '" + username + "'";
	//ResultSet rs1 = DB1.executeQuery(stmt1, sql1);
	//rs1.next();
	//User u = new User();
	//u.initFromRs(rs1);

	System.out.println(username);
	Statement stmt = DB1.createStmt(conn);
	String sql = "select * from student where student_number = '"
			+ username + "'";
	ResultSet rs = DB1.executeQuery(stmt, sql);
	Student s = new Student();
	rs.next();
	s.setStudentNumber(rs.getString("student_number"));
	s.setStudentName(rs.getString("student_name"));
	s.setStudentSex(rs.getString("student_sex"));
	s.setStudentClass(rs.getString("student_class"));
	DB1.close(rs);
	//DB1.close(rs1);
	DB1.close(stmt);
	//DB1.close(stmt1);
	DB1.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>�㷨��������ƽ�ѧ��վ</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="images/index_guest.css" type=text/css rel=stylesheet>
		<STYLE type=text/css>
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
									<a href="index.jsp" class="STYLE7">��ҳ</a>
									<a href="jpkc.jsp">���羫Ʒ�γ�</a>
									<a href="studyResource.jsp">ѧϰ��Դ</a>
									<a href="BBS/articleFlat.jsp">��������</a>
									<a href="onlineExam.jsp">���߿���</a>
									<a href="message.jsp">���԰�</a>
								</DIV>
							</TD>
							<TD width=7 background=images/info-center.jpg></TD>
							<TD width=315 background=images/info-background1.jpg>
								<DIV class=text1>
									�û�����<%=s.getStudentNumber()%>&nbsp;���ݣ� ѧ�� &nbsp;&nbsp;

									<A class=white12 href="index.jsp" target=_self> �˳�ϵͳ </A>
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
												<a href="studentGX.jsp">������Ϣ��ѯ</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="studentXGMM.jsp">�޸�����</a>
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
												<a href="studentLoginExam.jsp">�μӿ���</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg" alt="sa">
											</TD>
											<TD class=text3>
												<a href="studentCXCJ.jsp">��ѯ�ɼ�</a>
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
												<IMG src="images/jiaoliushequ.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="BBS/articleFlat.jsp">ѧϰ��̳</a>
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
							<TD class=left1 width=236 background=images/left-center-bg1.jpg
								colSpan=3>
								&nbsp;
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
												<a href="studyResource.jsp">�μ�</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="studyResource.jsp">������Դ</a>
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
													class="text3">���������ѧ</a>
												</span>
											</TD>
										</TR>
										<TR>
											<TD class=text3 colSpan=2>
												<a href="http://tianfutianshi.blog.com.cn" class="text3">Kevin����</a>
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
							<TD height=40 align="center" background=images/right-top-bg3.jpg
								class="STYLE8">
								������Ϣ��ѯ
							</TD>
							<TD height=40 background=images/right-top-bg3.jpg></TD>
							<TD height=40 background=images/right-top-bg3.jpg></TD>
						</TR>
						<TR>
							<TD class=left1 width=750 background=images/bg.jpg colSpan=2
								height=169 align="center">
								<TABLE border=2 align="center" cellSpacing=0>
									<TBODY>
										<TR>
											<TD class=text4 width="50" align="right">
												ѧ�ţ�
											</TD>
											<TD class=text4 colSpan=2 width="150"><%=s.getStudentNumber()%></TD>
										</TR>
										<TR>
											<TD class=text4 width="50" align="right">
												������
											</TD>
											<TD class=text4 colSpan=2><%=s.getStudentName()%></TD>
										</TR>
										<TR>
											<TD class=text4 width="50" align="right">
												�Ա�
											</TD>
											<TD class=text4 colSpan=2><%=s.getStudentSex()%></TD>
										</TR>
										<TR>
											<TD class=text4 width="50" align="right">
												�༶��
											</TD>
											<TD class=text4 colSpan=2><%=s.getStudentClass()%></TD>
										</TR>
										<TR>
											<TD class=text4 width="50" align="right">
												�γ̣�
											</TD>
											<TD class=text4 colSpan=2><%=s.getStudentCourseno()%></TD>
										</TR>


									</TBODY>
								</TABLE>
							</TD>
							<TD height=171 background=images/right-top2-bg3.jpg>
							</TD>
						</TR>

						<TR>
							<TD width=750 bgColor=#ffffff colSpan=3 height=537
								background=images/bg.jpg>
								&nbsp;
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