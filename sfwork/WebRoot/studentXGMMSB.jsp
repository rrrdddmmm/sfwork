<%@ page language="java"
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


<h2>
	<i>�޸�����ʧ�ܣ�</i>
</h2>
<br>
<span id="time" style="background: red">3</span>
����Զ���ת���������ת��������������
<a href="studentXGMM.jsp">����</a>
<script type="text/javascript">
	delayURL("studentXGMM.jsp", 3000);
</script>