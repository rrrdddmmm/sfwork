<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,com.ComputerTrainingPlatform.*"%>
<%
	//���ñ����ʽΪGB18030	
	request.setCharacterEncoding("GB18030");
	//�ж��Ƿ�Ϊ��ҳ������ӣ����Ǵ�����ҳ�����ӹ�����
	String action = request.getParameter("action");
	if (action != null && action.trim().equals("message")) {
		String messageTitle = request.getParameter("messageTitle");
		String messageInfo = request.getParameter("messageInfo");
		System.out.println(messageTitle);
		System.out.println(messageInfo);
		//�������ݿ⣬���в������
		Connection conn = DB1.getConn();
		//�����Զ�ִ��Ϊ��
		boolean autoCommit = conn.getAutoCommit();
		conn.setAutoCommit(false);

		String sql = "insert into message values(null,'" + messageTitle + "','" + messageInfo + "',now())";
		DB1.executeUpdate(conn, sql);

		
		conn.commit();
		//�ظ�autoCommitΪtrue
		conn.setAutoCommit(autoCommit);
		//�ر����ݿ�����
		DB1.close(conn);
		//��������ɹ�����ת���ɹ�ҳ��
		request.getRequestDispatcher("messageSuccess.jsp").forward(
				request, response);
	}
%>
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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
	<HEAD>
		<TITLE>��ֽѧϰƽ̨</TITLE>
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
											<param name="movie" value="images/KevinPlatform.swf">
											<param name="quality" value="high">
											<embed src="images/KevinPlatform.swf" 
												type="application/x-shockwave-flash" width="100%"
												height="150"></embed>
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
										
										<a href="BBS/articleFlat.jsp" title="��������"><span>��������</span>
										</a>
										<!-- <a href="onlineExam.jsp" title="��ֽʵ��"><span>��ֽʵ��</span> </a>  -->
										<a href="#" title="��ֽʵ��"><span>��ֽʵ��</span> </a>
										<a href="studyResource.jsp" title="��ֽѧϰ��Դ"><span>��ֽѧϰ��Դ</span>
										</a>
										<a href="jpkc.jsp" title="��ֽ�γ�"><span>��ֽ�γ�</span> </a>
										<a href="index.jsp" title="��ҳ"><span>��ҳ</span>
										</a>
									</TD>
								</TR>
								<TR>
									<TD class=border vAlign=top align=middle width=300>
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
																						<TD align=middle bgColor=#efefef>
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
																											��¼���:
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
																					<TD bgColor=#efefef sytle="line-height:150%">
																						<TABLE cellSpacing=0 cellPadding=4 width="100%"
																							border=0>
																							<TBODY>
																							</TBODY>
																						</TABLE>
																					</TD>
																				</TR>

																				<TR>
																					<TD align=middle bgColor=#ffffff>
																						<TABLE cellSpacing=0 cellPadding=0 width="100%"
																							border=0>
																							<TBODY>
																								<TR>
																									<TD background=images/link0.gif bgColor=#efefef
																										height=30>
																										<FONT color=#ffffff>��ֽ�γ�</FONT>
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left>
																										��ֽ����
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										��ֽ���
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										��ֽ���
																									</TD>
																								</TR>
																								<TR>
																									<TD align=left height=20>
																										���Ҽ�ֽ�γ̵���
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
																		<TABLE width="100%" height="30" border=0 cellPadding=0
																			cellSpacing=0>
																			<TBODY>

																				<TR>
																					<TD width="198" height="34"
																						style="background-image: url(images/starOrange.gif)">
																						&nbsp;
																					</TD>

																				</TR>
																			</TBODY>
																		</TABLE>
																	</TD>
																</TR>

																<TR>

																	<TD width=218>
																		&nbsp;
																	</TD>

																</TR>

																<TR>
																	<TD width="218" class=msg>
																		<span class="f18">��д���������ԣ�</span>
																	</TD>
																</TR>
																<TR>
																	<TD width="218" class=msg>
																		<form action="message.jsp" method="post">
																			<table width="700">
																				<input type="hidden" name="action" value="message" />
																				<tr>
																					<td width="60">
																						<span class="STYLE1">���⣺</span>
																					</td>
																					<td width="640">
																						<input type="text" name="messageTitle" />
																					</td>
																				</tr>
																				<tr>
																					<td>
																						<span class="STYLE1">���ݣ�</span>
																					</td>
																					<td>
																						<textarea name="messageInfo" rows="20" cols="100"></textarea>
																					</td>
																				</tr>
																				<tr>
																					<td>
																						&nbsp;
																					</td>
																					<td>
																						<input name="submit" type="submit" value="�ύ" />
																						<input name="reset" type="reset" value="���" />
																					</td>
																				</tr>
																			</table>
																		</form>
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
					<TD align=middle colSpan=3>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD background=images/diandian.gif height=10>
										&nbsp;
									</TD>
								</TR>
								<TR>
									<TD align=middle height=30>
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
