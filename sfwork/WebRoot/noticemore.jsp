<%@page language="java" pageEncoding="GB18030"%>
<%@page import="java.sql.*,java.util.*,com.ComputerTrainingPlatform.*"%>
<%
	request.setCharacterEncoding("GB18030");

	Connection conn = DB1.getConn();

	String strPageNo = request.getParameter("pageNo");
	int pageNo;
	final int PAGE_SIZE = 10;
	
	if(strPageNo == null || strPageNo.equals("")) {
		pageNo = 1;
	} else {
		try {
			pageNo = Integer.parseInt(strPageNo);
		}catch(NumberFormatException e) {
			pageNo = 1;
		}
		
		if(pageNo <= 0) {
			pageNo = 1;
		}
	}
	
	Statement stmtCount = DB1.createStmt(conn);
	String sqlCount = "select count(*) from notice";
	ResultSet rsCount = DB1.executeQuery(stmtCount, sqlCount);
	rsCount.next();
	int totalRecords = rsCount.getInt(1);
	int totalPages = totalRecords % PAGE_SIZE == 0 ? totalRecords/PAGE_SIZE : totalRecords/PAGE_SIZE + 1;
	if(pageNo >= totalPages) {
		pageNo = totalPages;
	}
	int startPos = (pageNo - 1) * PAGE_SIZE;
	
	Statement stmt = DB1.createStmt(conn);
	String sql = "select * from notice order by notice_date desc limit " + startPos + "," + PAGE_SIZE;
	ResultSet rs = DB1.executeQuery(stmt, sql);
	System.out.println(rs);
	List<Notice> notices = new ArrayList<Notice>();
	while(rs.next()) {
		Notice n = new Notice();
		n.initFromRs(rs);
		notices.add(n);
	}
	
	
	DB1.close(rsCount);
	DB1.close(stmtCount);
	
	DB1.close(rs);
	DB1.close(stmt);
	DB1.close(conn);
%>

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
										<a href="message.jsp" title="留言板"><span>留言板</span> </a>
										<a href="onlineExam.jsp" title="在线考试"><span>在线考试</span> </a>
										<a href="BBS/articleFlat.jsp" title="交流社区"><span>交流社区</span>
										</a>
										<a href="studyResource.jsp" title="学习资源"><span>学习资源</span>
										</a>
										<a href="jpkc.jsp" title="网络精品课程"><span>网络精品课程</span> </a>
										<a href="index.jsp" title="首页"><span>首页</span> </a>
									</TD>
								</TR>
								<TR>
									<TD width=4></TD>
									<TD colspan="6" align=middle vAlign=top width="100%">
										<TABLE width="100%" border=0 align="center" cellSpacing=0>
											<TBODY>
												<TR>
													<TD colspan="4" align="center" bgcolor="#0099FF">
														所有通知													</TD>
												</TR>
												<TR>
													<TD colspan="4" align="left">
													<form name="form1" style="size: 10" action="newsmore.jsp">
                          共<%=totalPages%>页 第<%=pageNo%>页 -  [ <a
								href="newsmore.jsp?pageNo=1" class="">首页</a> | 
								<a href="newsmore.jsp?pageNo=<%=pageNo - 1%>">上一页</a>
								<a href="newsmore.jsp?pageNo=<%=pageNo + 1%>">下一页</a> |<a
								href="newsmore.jsp?pageNo=<%=totalPages%>" class="">尾页</a> ]
                          <select name="pageNo" onChange="document.form1.submit()">
                            <%
									for (int i = 1; i <= totalPages; i++) {
								%>
                            <option value=<%=i%> <%=(pageNo == i) ? "selected" : ""%>> 第<%=i%>页 </option>
                            <%
									}
								%>
                          </select>
                      </form>													</TD>
												</TR>
												

												<%
													for(Iterator<Notice> it = notices.iterator(); it.hasNext();) {
														Notice n = new Notice();
														n = it.next();
														
												%>
												<TR>
													<TD width="709" align="left" valign="top"><a
																			href="amanagerXTTZdetail.jsp?dettitle=<%=n.getNoticeTitle()%>"
																			target=_blank><%=n.getNoticeTitle()%></A></TD>
													<TD colspan="2"><%=n.getNoticeDeliver() %>&nbsp;</TD>
												    <TD width="123"><%=new java.text.SimpleDateFormat("yy-MM-dd hh:mm:ss").format(n.getNoticeDate()) %></TD>
												</TR>
												
												<%
													}
												%>
											</TBODY>
										</TABLE>
									</TD>

								</TR>
								<TR align=right>
									<TD background=images/bgmenu_t.gif colSpan=7 height=24></TD>
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
