<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.kevin.bbs.*"%>
<%
	request.setCharacterEncoding("GB18030");

	int pid = Integer.parseInt(request.getParameter("pid"));
	int rootId = Integer.parseInt(request.getParameter("rootId"));
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	System.out.println(title);
	String cont = request.getParameter("cont");
	System.out.println(cont);
	String articleTitle = request.getParameter("articleTitle");
	String url = "http://localhost:8080/sfwork/BBS/articleDetailFlat.jsp?id=" + id + "&title=" + articleTitle;

	Connection conn = DB.getConn();
	boolean autoCommit = conn.getAutoCommit();
	conn.setAutoCommit(false);
	
	String sql = "insert into article values (null, ?, ?, ?, ?, now(), ?)";
	PreparedStatement pstmt = DB.prepareStmt(conn, sql);
	pstmt.setInt(1, pid);
	pstmt.setInt(2, rootId);
	pstmt.setString(3, title);
	pstmt.setString(4, cont);
	pstmt.setInt(5, 0);
	pstmt.executeUpdate();
	
	Statement stmt = DB.createStmt(conn);
	stmt.executeUpdate("update article set isLeaf=1 where id = " + pid); 
	
	conn.commit();
	conn.setAutoCommit(autoCommit);
	DB.close(stmt);
	DB.close(pstmt);
	DB.close(conn);
%>

<%
	//response.sendRedirect("article.jsp");
%>

<span id="time" style="background:red">5</span>
秒后自动跳转，如果不跳转，请点击下面链接

<script language="JavaScript1.2" type="text/javascript">
<!--
//  Place this in the 'head' section of your page.  

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
<a href="<%=url %>">返回</a>
<script type="text/javascript">
	delayURL("<%=url%>", 3000);
</script>


