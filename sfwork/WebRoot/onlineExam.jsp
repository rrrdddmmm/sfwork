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
	<i>����û�е�½�����¼����ʱ�ҳ�棡</i>
</h2>
<br>
<span id="time" style="background: red">5</span>
����Զ���ת���������ת��������������
<a href="loginExam.jsp">������ҳ</a>
<script type="text/javascript">
	delayURL("loginExam.jsp", 3000);
</script>
<%
	return;
	}
%>


<%
	//ͨ��sessionȡ��ѧ�����Եĵ��Ծ���
	String paperNumber = (String) session.getAttribute("paperNumber");
	System.out.println(paperNumber);
	//�������������ֱ�������ʾ����ѡ������ʴ�������
	int j = 1;
	int s = 1;
	//�������ݿ�ȡ��ѧ���Ŀ����Ծ�ľ�����Ϣ���������Ծ�
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	//��testpaper����ȡ����������
	String sql = "select * from testpaper where peapernumber ='"
			+ paperNumber + "'";
	ResultSet rs = DB1.executeQuery(stmt, sql);
	//����TestPaper��Ķ���tp1�����洢����
	TestPaper tp1 = new TestPaper();
	rs.next();
	System.out.println(rs);
	//ͨ����ѯ�������ʼ��tp1����
	tp1.initFromRs(rs);
	//�Ե���ѡ��������Ѷȵ���Ŀ����Ŀ���и�ֵ
	int selectEasy = tp1.getTpSelectEasy();
	int selectNormal = tp1.getTpSelectNormal();
	int selectDifficulty = tp1.getTpSelectDifficulty();
	double selectScore = tp1.getTpSelectScore();
	int selectTotalNumber = selectEasy + selectNormal + selectDifficulty;
	
	System.out.println(selectEasy);
	System.out.println(selectNormal);
	System.out.println(selectDifficulty);
	
	//�����ݿⵥ��ѡ��������choicequestion�漴��ȥ��Ӧ�Ѷ���Ŀ����Ŀ
	String sqls1 = "select * from choicequestion where difficulty = 1 order by rand() limit "
			+ selectEasy;
	String sqls2 = "select * from choicequestion where difficulty = 2 order by rand() limit "
			+ selectNormal;
	String sqls3 = "select * from choicequestion where difficulty = 3 order by rand() limit "
			+ selectDifficulty;
	
	//��ȡ���������ݷ���ArrayList����cqs������
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
	//���ʴ�������Ѷȵ���Ŀ����Ŀ���и�ֵ
	List<SimpleQuestion> sqs = new ArrayList<SimpleQuestion>();
	int simpleEasy = tp1.getTpSimpleEasy();
	int simpleNormal = tp1.getTpSimpleNormal();
	int simpleDifficulty = tp1.getTpSimpleDifficulry();
	double simpleScore = tp1.getTpSimpleScore();
	int simpleTotalNumber = simpleEasy + simpleNormal + simpleDifficulty;
	//�����ݿ��ʴ�������choicequestion�漴��ȥ��Ӧ�Ѷ���Ŀ����Ŀ�������ݱ�����ArrayList���е�sqs������
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
	
	//�ر����ݿ�����
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
		<title>����������γ̽�ѧƽ̨��KevinPlatform��</title>
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
						��ӭ�������߿���ҳ��
						<span style="font-weight: bold;">��ͬѧ��Ҫ�ظ��ύ�Ծ�</span>
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
																		����ѧ��ѧ��:<%=studentNumber%>
																		<input type="hidden" name="studentNumber"
																			value="<%=studentNumber%>" />
																</tr>
																<tr>
																	<td>
																		һ������ѡ���⣨��<%=selectTotalNumber %>�⣬ÿ��<%=selectScore %>�֣�
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
																		�����ʴ��⣨��<%=simpleTotalNumber %>�⣬ÿ��<%=simpleScore %>�֣�
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
																		<input type="submit" value="�ύ�Ծ�" />
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

