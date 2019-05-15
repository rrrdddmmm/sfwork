<%@page language="java" pageEncoding="GB18030"%>

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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
	<HEAD>
		<TITLE>计算机基础课程教学平台（KevinPlatform）</TITLE>
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

.STYLE4 {
	color: #FF0000
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
										<object height=120 width="100%"
											classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000>
											<param name="movie" value="images/KevinPlatform.swf">
											<param name="quality" value="high">
											<embed src="images/KevinPlatform.swf" quality="high"
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
										<a href="studyResourceJZ.jsp" title="我的剪纸"><span>我的剪纸</span> </a>
										<a href="studyResource.jsp" title="剪纸学习资源"><span>剪纸学习资源</span></a>
										<a href="jpkc.jsp" title="剪纸课程"><span>剪纸课程</span> </a>
										<a href="BBS/articleFlat.jsp">交流社区</a>
										<a href="message.jsp">留言板</a>
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
																		&nbsp;
																	</TD>
																</TR>
																<TR>
																	<TD width="218" class=msg align="left">
																		<span class="f18 STYLE4"><strong>留言成功！</strong>
																		</span><a href="message.jsp">返回继续留言</a>
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
									/TR>
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
