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
	Statement stmt = DB1.createStmt(conn);
	System.out.println(username);
	String sql = "select * from user where username = '" + username
			+ "'";
	ResultSet rs = DB1.executeQuery(stmt, sql);
	rs.next();
	User u = new User();
	u.initFromRs(rs);

	String sql1 = "select * from testpaper";
	ResultSet rs1 = DB1.executeQuery(stmt, sql1);
	List<TestPaper> tps = new ArrayList<TestPaper>();
	while (rs1.next()) {
		TestPaper tp = new TestPaper();
		tp.initFromRs(rs1);
		tps.add(tp);
	}

	DB1.close(rs);
	DB1.close(stmt);
	DB1.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD>
		<TITLE>��ֽ��ѧʵ��ƽ̨</TITLE>
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

.STYLE9 {
	font-size: 20px
}

.STYLE10 {
	font-size: 15px
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
									<a href="index.jsp" class="STYLE7">��ҳ</a>
									<a href="jpkc.jsp">��ֽ�γ�</a>
									<a href="studyResource.jsp">��ֽ��Դ</a>
									<a href="BBS/articleFlat.jsp">��������</a>
									<a href="message.jsp">���԰�</a>
								</DIV>
							</TD>
							<TD width=7 background=images/info-center.jpg></TD>
							<TD width=315 background=images/info-background1.jpg>
								<DIV class=text1>
									�û�����<%=u.getUserName()%>&nbsp;��ݣ� ��ʦ &nbsp;
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
												<IMG src="images/tongzhiguanli.gif" width="78" height="21">
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="teacherXTTZ.jsp">����֪ͨ</a>
											</TD>
										</TR>
										<TR>
											<TD class=dian>
												<IMG src="images/dian.jpg">
											</TD>
											<TD class=text3>
												<a href="teacherXTTZdelete.jsp">����֪ͨ</a>
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
												<a href="teacherSC.jsp">�ϴ���ֽ�μ���Դ</a>
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
													class="text3">�����Ƽ���ѧ</a>
												</span>
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
							<TD width=17 background=images/center-bg3.jpg height=750>
								<br>
							</TD>
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
								<span class="STYLE8">����Ծ����</span>
							</TD>
						</TR>
						<TR>
							<TD width="750" colSpan=10 background=images/bg.jpg class=left1>
								<form action="ateacherAddTestPaper.jsp" method="post">
									<p class="STYLE9">
										����Ծ�˵��������ϸ�Ķ���
									</p>
									<p class="STYLE10">
										�Ծ��ɵ���ѡ������ʴ�����ɡ�����Ծ���ô�����������ȡ��ķ�ʽ�����±���������Ӧ�Ѷȵ���Ŀ��Ŀ�������ʶȵ��Ծ��Ѷȡ�
									</p>
									<p class="STYLE10">
										������Ӧ���ѶȺ�����дҪ���ɴ��Ѷ�������Ŀ����Ŀ��ע�⣺���ܿ��Ų���д��������Ѷ�û����Ŀ�������롰0�����ڷ�������дÿ����Ŀ�ķ�����������ѡ���⴦��д��4������ʾÿ��ѡ����ķ���Ϊ4��
									</p>
									<p class="STYLE10">
										���Ծ��Ŵ���дһ����λ�������������磺001��010��100 �˱��������������ʱ����ѧ�����Ե��Ծ���ѧ���ڵ�½����ʱ��д��
									</p>
									<TABLE width="400" border=2 align="center" cellSpacing=0>
										<TBODY>
											<TR>
												<TD class=text4 colspan="8" align="center" bgcolor="#0099FF">
													����Ծ�												</TD>
											</TR>
											<TR>
												<TD class=text4 colspan="2" align="left">
													�Ծ��ţ�												</TD>
												<TD align="left"><input type="text" name="paperNumber" size="8" /></TD>
												<TD colspan="5" align="left">&nbsp;</TD>
											</TR>
											<TR>
												<TD class=text4 colspan="8" align="left">
													����ѡ���⣺										</TD>
											</TR>

											<TR>
												<TD class=text4 width="56" align="left">
													��:												</TD>
												<TD width="36" align="left">
											  <input type="text" name="selectEasy" size="4" />											  </TD>
												<TD class=text4 width="55" align="left">
													�е�:												</TD>
												<TD width="50" align="left">
											  <input type="text" name="selectNormal" size="4" />											  </TD>
												<TD class=text4 width="41" align="left">
													��:												</TD>
												<TD width="36" align="left">
											  <input type="text" name="selectDifficulty" size="4" />											  </TD>
											    <TD class=text4 width="50" align="left">����:</TD>
											    <TD width="40" align="left"><input type="text" name="selectScore" size="4" /></TD>
											</TR>
											<TR>
												<TD class=text4 colspan="8" align="left">
													�ʴ��⣺</TD>
											</TR>
											<TR>
												<TD class=text4 width="56" align="left">
													��:</TD>
												<TD width="36" align="left">
											  <input type="text" name="simpleEasy" size="4" />											  </TD>
												<TD class=text4 width="55" align="left">
													�е�:</TD>
												<TD width="50" align="left">
											  <input type="text" name="simpleNormal" size="4" />											  </TD>
												<TD class=text4 width="41" align="left">
													��:												</TD>
												<TD align="left">
											  <input type="text" name="simpleDifficulty" size="4" />											  </TD>											
											    <TD class=text4 align="left">����:</TD>
											    <TD align="left"><input type="text" name="simpleScore" size="4" /></TD>
											</TR>
											
											<TR>
												<TD colspan="8" align="left">
													<input type="submit" value="ȷ�����" />
													<input type="reset" value="����" />												</TD>
											</TR>
										</TBODY>
								  </TABLE>
								</form>
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bgcolor="#0099FF">
									<tr>
										<td>&nbsp;
											
										</td>
									</tr>
								</table>
								<br>

								<TABLE width="400" border=2 align="center" cellSpacing=0>
									<TBODY>
										<TR>
											<TD class=text4 colspan="6" align="center" bgcolor="#0099FF">
												�����Ծ�鿴
											</TD>
										</TR>
										<TR>
											<TD class=text4 colspan="5" align="left">
												�Ծ���
											</TD>
											<TD class=text4 align="center">
												����
											</TD>
										</TR>
										<%
											for (Iterator<TestPaper> it = tps.iterator(); it.hasNext();) {
												TestPaper tp = new TestPaper();
												tp = it.next();
										%>
										<TR>
											<TD class=text4 colspan="5" align="left"><%=tp.getTpNumber()%></TD>
											<TD class=text4 align="center">
												<a
													href="teacherAddTestPaperDetail.jsp?detnumber=<%=tp.getTpNumber()%>">�鿴</a><a
													href="ateacherAddTestPaperdelete.jsp?number=<%=tp.getTpNumber()%>">
													ɾ��</a>
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
			</DIV>
			<DIV id=foot>
				<TABLE width="100%" cellSpacing=0 cellPadding=0 border=0>
					<TBODY>
						<TR>
							<TD class=foot_text background=images/right-top-bg1.jpg>&nbsp;
								
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
