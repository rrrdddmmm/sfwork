<%@page language="java" pageEncoding="GB18030"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
	<HEAD>
		<TITLE>计剪纸在线教学平台</TITLE>
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
</STYLE>
		<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
	</HEAD>
	<BODY leftMargin=0 topMargin=0>
		<!--top-->
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
		<!-- end of top-->
		<!--center-->
		<TABLE class=pageborder cellSpacing=0 cellPadding=0 width=100% 
			align=center bgColor=#ffffff border=1>
			<TBODY>
				<TR>
					<TD>
						<TABLE cellSpacing=1 cellPadding=0 width="100%" align=center height="600"
							border=0>
							<TBODY>
								<TR style="background-color: #F4F7FB">
									<td colSpan=2 height=24
										style="background-image: url(images/kevin logo.gif); background-position: center; background-repeat: no-repeat"></td>
									<TD colSpan=7 height=24 id="tabs1">
										<a href="message.jsp" title="留言板"><span>留言板</span> </a>
										<a href="BBS/articleFlat.jsp" title="交流社区"><span>交流社区</span>
										</a>
										<!-- <a href="onlineExam.jsp" title="剪纸实践"><span>剪纸实践</span> </a>  -->
										<a href="studyResourceJZ.jsp" title="我的剪纸"><span>我的剪纸</span> </a>
										<a href="studyResource.jsp" title="剪纸学习资源"><span>剪纸学习资源</span>
										</a>
										<a href="jpkc.jsp" title="剪纸课程"><span>剪纸课程</span> </a>
										<a href="index.jsp" title="首页"><span>首页</span> </a>
									</TD>
								</TR>
								<!--主体内容，分三列-->
								<TR>
									<TD width=4></TD>
									<!--space-->
									<!--left-->
									<TD colspan="6" align=center vAlign=top width="100%">
									<form action="aforgetpassword.jsp">
										<TABLE width="500" border=2 align="center" cellSpacing=0>
											<TBODY>
												<TR>
													<TD colspan="2" align="center" bgcolor="#0099FF">用户找回密码</TD>
												</TR>
												<TR>
													<TD width="132" align="right">用户名：</TD>
													<TD align="left"><input type="text" name="usernam" size="20"/></TD>
												</TR>

												<TR>
													<TD width="132" align="right">请输入您的注册邮箱：													</TD>
													<TD align="left"><input type="text" name="email" size="30" /></TD>
												</TR>
												<TR>
													<TD width="132" align="right" valign="top">&nbsp;</TD>
													<TD align="left"><input type="submit" value="找回密码" />
													<input type="reset"  value="重新输入" /></TD>
												</TR>
											</TBODY>
										</TABLE>
									</form>
									</TD>

								</TR>
								<TR align=right>
									<TD background=images/bgmenu_t.gif colSpan=7 height=24><br></TD>
								</TR>
							</TBODY>
						</TABLE>
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
									<TD background=images/diandian.gif height=10>&nbsp;
										
									</TD>
								</TR>
								<TR>
									<TD align=center height=30>
										Copyright@ ComputerTraining KevinPlatform
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
