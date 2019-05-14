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
	String studentNumber = (String) session
			.getAttribute("studentNumber");
	System.out.println(studentNumber);
	if (studentNumber == null) {
%>
<h2>
	<i>您还没有登陆！请登录后访问本页面！</i>
</h2>
<br>
<span id="time" style="background: red">5</span>
秒后自动跳转，如果不跳转，请点击下面链接
<a href="loginExam.jsp">返回首页</a>
<script type="text/javascript">
	delayURL("loginExam.jsp", 3000);
</script>
<%
	return;
	}
%>


<%
	//通过session取到学生考试的的试卷编号
	String paperNumber = (String) session.getAttribute("paperNumber");
	System.out.println(paperNumber);
	//定义两个变量分别用来显示单项选择题和问答题的题号
	int j = 1;
	int s = 1;
	//连接数据库取出学生的考试试卷的具体信息用于生成试卷
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	//从testpaper表中取出具体数据
	String sql = "select * from testpaper where peapernumber ='"
			+ paperNumber + "'";
	ResultSet rs = DB1.executeQuery(stmt, sql);
	//创建TestPaper类的对象tp1用来存储数据
	TestPaper tp1 = new TestPaper();
	rs.next();
	System.out.println(rs);
	//通过查询结果集初始化tp1对象
	tp1.initFromRs(rs);
	//对单项选择题各种难度的题目的数目进行赋值
	int selectEasy = tp1.getTpSelectEasy();
	int selectNormal = tp1.getTpSelectNormal();
	int selectDifficulty = tp1.getTpSelectDifficulty();
	double selectScore = tp1.getTpSelectScore();
	int selectTotalNumber = selectEasy + selectNormal + selectDifficulty;
	
	System.out.println(selectEasy);
	System.out.println(selectNormal);
	System.out.println(selectDifficulty);
	
	//从数据库单项选择题题库表choicequestion随即出去相应难度数目的题目
	String sqls1 = "select * from choicequestion where difficulty = 1 order by rand() limit "
			+ selectEasy;
	String sqls2 = "select * from choicequestion where difficulty = 2 order by rand() limit "
			+ selectNormal;
	String sqls3 = "select * from choicequestion where difficulty = 3 order by rand() limit "
			+ selectDifficulty;
	
	//将取出来的数据放在ArrayList类型cqs对象中
	List<ChoiceQuestion> cqs = new ArrayList<ChoiceQuestion>();
	ResultSet rs1 = DB1.executeQuery(stmt, sqls1);
	while (rs1.next()) {
		ChoiceQuestion cq = new ChoiceQuestion();
		cq.initFromRs(rs1);
		cqs.add(cq);

	}
	ResultSet rs2 = DB1.executeQuery(stmt, sqls2);
	while (rs2.next()) {
		ChoiceQuestion cq = new ChoiceQuestion();
		cq.initFromRs(rs2);
		cqs.add(cq);

	}
	ResultSet rs3 = DB1.executeQuery(stmt, sqls3);
	while (rs3.next()) {
		ChoiceQuestion cq = new ChoiceQuestion();
		cq.initFromRs(rs3);
		cqs.add(cq);
	}
	//对问答题各种难度的题目的数目进行赋值
	List<SimpleQuestion> sqs = new ArrayList<SimpleQuestion>();
	int simpleEasy = tp1.getTpSimpleEasy();
	int simpleNormal = tp1.getTpSimpleNormal();
	int simpleDifficulty = tp1.getTpSimpleDifficulry();
	double simpleScore = tp1.getTpSimpleScore();
	int simpleTotalNumber = simpleEasy + simpleNormal + simpleDifficulty;
	//从数据库问答题题库表choicequestion随即出去相应难度数目的题目，将数据保存在ArrayList类中的sqs对象中
	if(simpleEasy != 0) {
		String sqljd1 = "select * from simplequestion where difficulty = 1 order by rand() limit "
				+ simpleEasy;
		ResultSet rsjd1 = DB1.executeQuery(stmt, sqljd1);
		while (rsjd1.next()) {
			SimpleQuestion sq = new SimpleQuestion();
			sq.initFromRs(rsjd1);
			sqs.add(sq);
		}
		DB1.close(rsjd1);
	}
	if(simpleNormal != 0) {
		String sqljd2 = "select * from simplequestion where difficulty = 2 order by rand() limit "
				+ simpleNormal;
		ResultSet rsjd2 = DB1.executeQuery(stmt, sqljd2);
		while (rsjd2.next()) {
			SimpleQuestion sq = new SimpleQuestion();
			sq.initFromRs(rsjd2);
			sqs.add(sq);
		}
		DB1.close(rsjd2);
	}
	if(simpleDifficulty != 0) {
		String sqljd3 = "select * from simplequestion where difficulty = 3 order by rand() limit "
				+ simpleDifficulty;
		ResultSet rsjd3 = DB1.executeQuery(stmt, sqljd3);
		while (rsjd3.next()) {
			SimpleQuestion sq = new SimpleQuestion();
			sq.initFromRs(rsjd3);
			sqs.add(sq);
		}
		DB1.close(rsjd3);
	}
	
	//关闭数据库链接
	DB1.close(rs);	
	DB1.close(rs1);	
	DB1.close(rs2);	
	DB1.close(rs3);	
	DB1.close(stmt);	
	DB1.close(conn);	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>计算机基础课程教学平台（KevinPlatform）</title>
	</head>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<TABLE width=100% align=left border=0>
			<TBODY>
				<TR>
					<TD width=415 height=69>
						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
							codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
							width="1000" height="150">
							<param name="movie" value="images/zaixiankaoshi.swf" />
							<param name="quality" value="high" />
							<embed src="images/zaixiankaoshi.swf" quality="high"
								pluginspage="http://www.macromedia.com/go/getflashplayer"
								type="application/x-shockwave-flash" width="1000" height="150"></embed>
						</object>
					</TD>
				</TR>
				<TR>
					<TD align=left height=20>
						欢迎来到在线考试页面
						<span style="font-weight: bold;">请同学不要重复提交试卷</span>
					</TD>
				</TR>

				<TR>
					<TD>
						<TABLE cellSpacing=0 cellPadding=0 width="100%" align=left
							border=0>
							<TBODY>
								<TR>
									<TD align=left height=5>
									</TD>
								</TR>
								<TR>
									<TD align=left bgColor=#0066cc height=1>
										<br />
									</TD>
								</TR>
								<TR>
									<TD align=left height=15>
									</TD>
								</TR>
								<TR>
									<TD vAlign=center align=left height=30 width="100%">

										<TABLE width="100%" align=left border=0>
											<TBODY>
												<TR>
													<TD>
														<FORM action="aonlineExam.jsp" method=post>
															<input type="hidden" name="selectTotalNumber" value="<%=selectTotalNumber %>" />
															<input type="hidden" name="selectScore" value="<%=selectScore %>" />
															<input type="hidden" name="simpleTotalNumber" value="<%=simpleTotalNumber %>" />
															<input type="hidden" name="testPaperNo" value="<%=tp1.getTpNumber() %>"/>
															<table width="100%" border="1">
																<tr>
																	<td colspan="2">
																		考试学生学号:<%=studentNumber%>
																		<input type="hidden" name="studentNumber"
																			value="<%=studentNumber%>" />
																</tr>
																<tr>
																	<td>
																		一，单项选择题（共<%=selectTotalNumber %>题，每题<%=selectScore %>分）
																	</td>
																</tr>
																<%
																	for (Iterator<ChoiceQuestion> it = cqs.iterator(); it.hasNext();) {
																		ChoiceQuestion cq = new ChoiceQuestion();
																		cq = it.next();
																%>
																<tr>
																	<td>
																		<%=s%>,<%=cq.getTitle()%>
																		<input type="hidden" name="questionTitle<%=s%>"
																			value="<%=cq.getTitle()%>" />
																		<br />
																		<input name="selectedAnswer<%=s%>" type="radio"
																			value="<%=cq.getOption1()%>" />
																		A,<%=cq.getOption1()%>
																		<br />
																		<input name="selectedAnswer<%=s%>" type="radio"
																			value="<%=cq.getOption2()%>" />
																		B,<%=cq.getOption2()%>
																		<br />
																		<input name="selectedAnswer<%=s%>" type="radio"
																			value="<%=cq.getOption3()%>" />
																		C,<%=cq.getOption3()%>
																		<br />
																		<input name="selectedAnswer<%=s%>" type="radio"
																			value="<%=cq.getOption4()%>" />
																		D,<%=cq.getOption4()%>
																		<br />
																	</td>
																</tr>
																<%
																	s++;
																	}
																%>
																<tr>
																	<td>
																		二，问答题（共<%=simpleTotalNumber %>题，每题<%=simpleScore %>分）
																	</td>
																</tr>
																<%
																	for (Iterator<SimpleQuestion> it = sqs.iterator(); it.hasNext();) {
																		SimpleQuestion sq = new SimpleQuestion();
																		sq = it.next();
																%>
																<tr>
																	<td>
																		<%=j%>,<%=sq.getTitle()%>
																		<input type="hidden" name="questionJDTitle<%=j%>"
																			value="<%=sq.getTitle()%> " />
																		<br />
																		<textarea rows="8" cols="50"
																			name="questionJDAnswer<%=j%>"></textarea>
																		<br />
																	</td>
																</tr>
																<%
																	j++;
																	}
																%>
																<tr>
																	<td>
																		<input type="submit" value="提交试卷" />
																	</td>
																</tr>
															</table>
														</FORM>
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
					<TD vAlign=center align=left bgColor=#3399ff height=23></TD>
				</TR>
				<TR>
					<TD vAlign=center align=center height=23>
						Copyright@ ComputerTraining KevinPlatForm
					</TD>
				</TR>
			</TBODY>
		</TABLE>
	</body>
</html>

