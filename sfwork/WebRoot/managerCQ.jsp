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

	String strPageNo = request.getParameter("pageNo");
	final int PAGE_SIZE = 13;
	int pageNo;
	if (strPageNo == null || strPageNo.trim().equals("")) {
		pageNo = 1;
	} else {
		try {
			pageNo = Integer.parseInt(strPageNo.trim());
		} catch (NumberFormatException e) {
			pageNo = 1;
		}
	}

	Statement stmt1 = DB1.createStmt(conn);
	String sqlCount = "select count(*) from choicequestion";
	ResultSet rsCount = DB1.executeQuery(stmt1, sqlCount);
	rsCount.next();
	int totalRecords = rsCount.getInt(1);
	int totalPages = totalRecords % PAGE_SIZE == 0 ? totalRecords
			/ PAGE_SIZE : totalRecords / PAGE_SIZE + 1;
	if (pageNo >= totalPages) {
		pageNo = totalPages;
	}
	int startPos = (pageNo - 1) * PAGE_SIZE;
	String sql1 = "select * from choicequestion order by id desc limit "
			+ startPos + "," + PAGE_SIZE;
	ResultSet rs1 = DB1.executeQuery(stmt1, sql1);
	List<ChoiceQuestion> cqs = new ArrayList<ChoiceQuestion>();
	while (rs1.next()) {
		ChoiceQuestion cq = new ChoiceQuestion();
		cq.initFromRs(rs1);
		cqs.add(cq);
	}

	DB1.close(rs);
	DB1.close(rs1);
	DB1.close(rsCount);
	DB1.close(stmt);
	DB1.close(stmt1);
	DB1.close(conn);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
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
        .STYLE9 {font-size: 15px}
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
											<TD class=dian>&nbsp;
												

										  </TD>
											<TD class=text3>
												<A href="http://jcjy.sdu.edu.cn/faq/faqindex.htm"
													target=_blank></A>
											</TD>
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
											<TD class=dian>&nbsp;
												

										  </TD>
											<TD class=text3>
												<A href="http://jcjy.sdu.edu.cn/myBBS/firstFrame.html"
													target=_blank></A>
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
												<a href="managerSC.jsp">上传资源</a>
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
													class="text3">天津理工大学</a> </span>
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
							<TD width=17 background=images/center-bg3.jpg height=750>
								=c
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
								<span class="STYLE8">题库管理</span>
							</TD>
						</TR>
						<TR>
							<TD width="750" colSpan=10 background=images/bg.jpg class=left1>
							    <p class=text4>添加单项选择题说明：</p>
							    <p class=text4>在难度处填写1代表简单，2代表一般，3代表困难。</p>
							    <form name="form1" action="amanagerCQ.jsp" method="post">
									<TABLE width="100%" border=2 align="center" cellSpacing=0>
										<TBODY>
											<TR>
												<TD colspan="2" align="center" bgcolor="#0099FF" class=text4>
													添加新选择题												</TD>
											</TR>
											<TR>
												<TD width="53" align="right" valign="top" class=text4>
													题目:												</TD>
												<TD>
													<textarea name="choiceTitle" rows="3" cols="60"></textarea>												</TD>
											</TR>
											<TR>
												<TD width="53" align="right" class=text4>
													难度:												</TD>
												<TD>
													<input type="text" name="choiceDifficulty" size="5" />												</TD>
											</TR>
											<TR>
												<TD width="53" align="right" valign="top" class=text4>
													选项1:												</TD>
												<TD>
													<textarea name="choice1" rows="3" cols="60"></textarea>												</TD>
											</TR>
											<TR>
												<TD width="53" align="right" valign="top" class=text4>
													选项2:												</TD>
												<TD>
													<textarea name="choice2" rows="3" cols="60"></textarea>												</TD>
											</TR>
											<TR>
												<TD width="53" align="right" valign="top" class=text4>
													选项3:												</TD>
												<TD>
													<textarea name="choice3" rows="3" cols="60"></textarea>												</TD>
											</TR>
											<TR>
												<TD width="53" align="right" valign="top" class=text4>
													选项4:												</TD>
												<TD>
													<textarea name="choice4" rows="3" cols="60"></textarea>												</TD>
											</TR>
											<TR>
												<TD width="53" align="right" valign="top" class=text4>
													答案:												</TD>
												<TD>
													<textarea name="choiceAnswer" rows="3" cols="60"></textarea>												</TD>
											</TR>
											<TR>
												<TD width="53" align="right">&nbsp;											  </TD>
												<TD class=text4>
													<input type="submit" value="点击添加" />
													<input type="submit" value="重新输入" />												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</form>


								<TABLE width="100%" border=2 align="center" cellSpacing=0>
									<TBODY>
										<TR>
											<TD colspan="3" align="center" bgcolor="#0099FF" class=text4>
												管理选择题库											</TD>
										</TR>
										<TR>
											<TD align="center" class=text4>
												题目											</TD>
											<TD align="center" class=text4 width="60">
												难度系数											</TD>
											<TD align="center" class=text4>
												操作											</TD>
										</TR>
										<%
											for (Iterator<ChoiceQuestion> it = cqs.iterator(); it.hasNext();) {
												ChoiceQuestion cq = new ChoiceQuestion();
												cq = it.next();
										%>
										<TR>
											<TD align="left" class=text4><%=cq.getTitle()%></TD>
											<TD class=text4 align="center">
												<%
													if (cq.getDifficulty() == 1) {
												%>
												简单
												<%
													} else if (cq.getDifficulty() == 2) {
												%>
												一般
												<%
													} else if (cq.getDifficulty() == 3) {
												%>
												困难
												<%
													}
												%>											</TD>
											<TD class=text4 width="60">
												<a href="amanagerCQdelete.jsp?delId=<%=cq.getId()%>">删除</a>
												<a href="managerCQdetail.jsp?detId=<%=cq.getId()%>">查看</a>											</TD>
										</TR>
										<%
											}
										%>
										<TR>
											<TD colspan="3" align="left" class=text4>
												<form name="form2" style="size: 10" action="managerCQ.jsp">
													共<%=totalPages%>页 第<%=pageNo%>页 - [
													<a href="managerCQ.jsp?pageNo=1" class="">首页</a> |
													<a href="managerCQ.jsp?pageNo=<%=pageNo - 1%>">上一页</a>
													<a href="managerCQ.jsp?pageNo=<%=pageNo + 1%>">下一页</a> |
													<a href="managerCQ.jsp?pageNo=<%=totalPages%>" class="">尾页</a>
													]
													<select name="pageNo" onChange="document.form2.submit()">
														<%
															for (int i = 1; i <= totalPages; i++) {
														%>
														<option value=<%=i%> <%=(pageNo == i) ? "selected" : ""%>>
															第<%=i%>页														</option>
														<%
															}
														%>
													</select>
												</form>											</TD>
										</TR>
									</TBODY>
								</TABLE>						  </TD>

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
