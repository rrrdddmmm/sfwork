<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.ComputerTrainingPlatform.*"%>
<%
	//���ñ����ʽΪGB18030
	request.setCharacterEncoding("GB18030");
	//�õ��γ����ͣ��������ݿ�ȡ����Ӧ�Ŀγ������е�����
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
	//�ر����ݿ�����
	DB1.close(rs);
	DB1.close(stmt);
	DB1.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
	<HEAD>
		<TITLE>����������γ̽�ѧƽ̨��KevinPlatform��</TITLE>
		<script type="text/javascript">
<!--
	function isLegal() {
		var u = document.getElementById("username").value;
		var p = document.getElementById("userpassword").value;
		
		if(u == "") {
			alert("�������û�����");
			return;
		} else if(p == ""){
			alert("���������룡");
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
										<a href="message.jsp" title="���԰�"><span>���԰�</span>
										</a>
										<a href="onlineExam.jsp" title="���߿���"><span>���߿���</span>
										</a>
										<a href="BBS/articleFlat.jsp" title="��������"><span>��������</span>
										</a>
										<a href="studyResource.jsp" title="ѧϰ��Դ"><span>ѧϰ��Դ</span>
										</a>
										<a href="jpkc.jsp" title="���羫Ʒ�γ�"><span>���羫Ʒ�γ�</span>
										</a>
										<a href="index.jsp" title="��ҳ"><span>��ҳ</span>
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
																							<TABLE width="100%" align=center>
																								<TBODY>
																									<TR>
																										<TD>
																											�û���:
																										</TD>
																										<TD>
																											<INPUT type="text" class=input size=12
																												name=username>
																										</TD>
																									</TR>
																									<TR>
																										<TD>
																											����:
																										</TD>
																										<TD>
																											<INPUT class=input type="password" size=12
																												name=userpassword>
																										</TD>
																									</TR>
																									<TR>
																										<TD colSpan=2>
																											��¼����:
																											<SELECT id=userClass name=userClass>
																												<OPTION value=1 selected>
																													ѧ��
																												</OPTION>
																												<OPTION value=2>
																													��ʦ
																												</OPTION>
																												<OPTION value=3>
																													����Ա
																												</OPTION>
																											</SELECT>
																										</TD>
																									</TR>
																									<TR>
																										<TD>
																											<DIV align=center>
																												<INPUT class=button type=submit value=ȷ��
																													name="ȷ��" onClick="isLegal()">
																											</DIV>
																										</TD>
																										<TD>
																											<DIV align=center>
																												<INPUT class=button type=reset value=����
																													name=����>
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
																									<TD align=center height=18>
																										<B><FONT color=#ff6600>�γ�Ŀ¼</FONT>
																										</B>
																									</TD>
																								</TR>
																								<TR>
																									<TD vAlign=bottom align=center height=24>
																										<A
																											href="http://202.115.138.20/subject.jsp?subject=computerbasis"><IMG
																												height=32 src="images/jc.gif" width=150
																												border=0>
																										</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD height=6>
																										<HR align=center color=#eeeeee SIZE=1>
																									</TD>
																								</TR>
																								<TR>
																									<TD vAlign=bottom align=center height=24>
																										<IMG height=32 src="images/c.gif" width=150
																											border=0>
																									</TD>
																								</TR>
																								<TR>
																									<TD height=6>
																										<HR align=center color=#eeeeee SIZE=1>
																									</TD>
																								</TR>
																								<TR>
																									<TD vAlign=bottom align=center height=24>
																										<IMG src="images/vfp.gif" border=0>
																									</TD>
																								</TR>
																								<TR>
																									<TD height=6>
																										<HR align=center color=#eeeeee SIZE=1>
																									</TD>
																								</TR>
																								<TR>
																									<TD vAlign=bottom align=center height=24>
																										<IMG height=32 src="images/rj.gif" width=150
																											border=0>
																									</TD>
																								</TR>
																								<TR>
																									<TD height=6>
																										<HR align=center color=#eeeeee SIZE=1>
																									</TD>
																								</TR>
																								<tr>
																									<TD>
																										<img src="images/zy.gif" border=1>
																									</TD>
																								</TR>
																								<TR>
																									<TD background=images/link0.gif bgColor=#efefef
																										height=30>
																										<FONT color=#ffffff>��Ʒ�γ�</FONT>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left>
																										��ѧ���������
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										C/C++�������
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										���ݿ�������
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										���Ҿ�Ʒ�γ̵���
																									</TD>
																								</TR>

																								<TR>
																									<TD background=images/link1.gif bgColor=#efefef
																										height=30>
																										<font color="#ffffff">��������</font>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left>
																										<A href="http://www.edu.cn/" target=_blank>�й�����������</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.pku.edu.cn/" target=_blank>������ѧ</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.tsinghua.edu.cn/"
																											target=_blank>�廪��ѧ</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.scu.edu.cn/" target=_blank>�Ĵ���ѧ</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.swjtu.edu.cn/"
																											target=_blank>���Ͻ�ͨ��ѧ</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.uestc.edu.cn/"
																											target=_blank>���ӿƼ���ѧ</A>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										<A href="http://www.tju.edu.cn/" target=_blank>����ѧ</A>
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
																							%> �����γ� <%
																								} else if (courseType == 2) {
																							%> �м��γ� <%
																								} else {
																							%> �߼��γ� <%
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
																	<TD width="492" class=msg><%=c.getCourseTitle()%></TD>
																	<TD class=date noWrap width=285>
																		������ʦ��<%=c.getCourseTeacher()%></TD>
																</TR>

																<TR>
																	<TD width="492" class=msg><%=c.getCourseInfo()%></TD>

																</TR>
																<TR>
																    <TD><a href="videoplayer.jsp?detId=<%=c.getId()%>" ><span>����</span></a></TD>
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