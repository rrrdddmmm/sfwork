<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@page	import="java.sql.*, com.ComputerTrainingPlatform.*, java.util.*, javax.mail.*"%>

<%@page	import="javax.mail.internet.*"%>
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

	String username = request.getParameter("usernam");
	String email = request.getParameter("email");
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	User u = new User();
	
	
	if (username != null && !(username.equals("")) && email != null
			&& !(email.equals(""))) {
		conn = DB1.getConn();
		String sql = "select * from user where username = ? and email = ?";
		pstmt = DB1.createPstmt(conn, sql);
		pstmt.setString(1, username);
		pstmt.setString(2, email);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			stmt = DB1.createStmt(conn);
			String sqluser = "select * from user where username = '" + username + "'";
			ResultSet rsuser = DB1.executeQuery(stmt, sqluser);
			while(rsuser.next()) {
				u.setUserName(rsuser.getString("username"));
				u.setUserPassword(rsuser.getString("userpassword"));
				u.setUserClass(rsuser.getInt("userclass"));
				u.setEmail(rsuser.getString("email"));
			}
			
			String content = "用户名：" + u.getUserName() + "  您的密码是：" + u.getUserPassword();
			String subject = "计算机基础课程教学平台找回密码";
			String from = "wuguangyuan757@sina.com";
			String name = "wuguangyuan757";
			String password = "880214";
			String to = u.getEmail();
			//向用户注册邮箱发送密码邮件
			boolean flag = false;
			try {
				Properties props = System.getProperties();
				props.put("mail.smtp.host", "smtp.sina.com.cn");
				props.put("mail.smtp.auth", "true");
				
				Session sendMailSession = Session.getDefaultInstance(props, null);
				javax.mail.Message msg = new MimeMessage(sendMailSession);
				msg.setFrom(new InternetAddress(from));
				msg.setRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(to));
				msg.setText(content);
				msg.setSubject(subject);
				msg.setSentDate(new java.util.Date());
				
				Transport transport = sendMailSession.getTransport("smtp");
				transport.connect("smtp.sina.com.cn", name, password);
				transport.sendMessage(msg, msg.getAllRecipients());
				flag = true;
			} catch(AddressException e) {
				e.printStackTrace();				
			} catch(MessagingException e) {
				e.printStackTrace();
			}
			
			String info = flag?"邮件发送成功！":"邮件发送失败";
%>
<h2>
	<b><i><%=info%></i>
	</b>
</h2>
<br>
<span id="time" style="background: red">5</span>
秒后自动返回，如果不返回，请点击下面链接
<a href="index.jsp">返回</a>
<script type="text/javascript">
	delayURL("index.jsp", 3000);
</script>	

<%
			
		} else {
%>
<h2>
	<b><i>用户名/注册邮箱错误！请输入正确的用户名和注册邮箱</i>
	</b>
</h2>
<br>
<span id="time" style="background: red">5</span>
秒后自动返回，如果不返回，请点击下面链接
<a href="forgetpassword.jsp">返回</a>
<script type="text/javascript">
	delayURL("forgetpassword.jsp", 3000);
</script>
<%
		}
	} else {
%>
<h2>
	<b><i>请输入用户名/注册邮箱</i>
	</b>
</h2>
<br>
<span id="time" style="background: red">5</span>
秒后自动返回，如果不返回，请点击下面链接
<a href="forgetpassword.jsp">返回</a>
<script type="text/javascript">
	delayURL("forgetpassword.jsp", 3000);
</script>
<%		
	}
%>
