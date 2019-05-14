<%@ page language="java" import="java.util.*,java.sql.*,com.ComputerTrainingPlatform.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
System.out.println(path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	//设置编码格式为GB18030
	request.setCharacterEncoding("GB18030");
	//得到课程类型，链接数据库取出相应的课程类型中的数据
	int detId = Integer.parseInt(request.getParameter("detId"));
	System.out.println(detId);
	Connection conn = DB1.getConn();
	Statement stmt = DB1.createStmt(conn);
	String sql = "select * from course where id = '" + detId
			+ "'";
	ResultSet rs = DB1.executeQuery(stmt, sql);
	rs.next();
	Course c = new Course();
	c.initFromRs(rs);
	String filename=c.getFilename();
	System.out.println(filename);
	//关闭数据库连接
	DB1.close(rs);
	DB1.close(stmt);
	DB1.close(conn);
%>
<!DOCTYPE html>
<html>
<head>
<title>算法分析与设计教学网站</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/video.css" media="all">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.plugin.js"></script>
<script type="text/javascript" src="js/jquery.video.js"></script>
<script type="text/javascript">
	$(function(){
			var s= $(".video_container").html();
			$(".video_container").html5video({
				width:800,               //Number型，播放器宽度。
				height:400,              //Number型，播放器高度。
				src:s,                  //String型，要播放的视频的 URL。
				poster:"http://oss.aliyuncs.com/zihanblog/file/video_poster.png",               //String型，在视频播放之前所显示的图片的 URL。
				loop:false,              //Boolean型，则当媒介文件完成播放后再次开始播放。
				preload:false,            //Boolean型，如果出现该属性，则视频在页面加载时进行加载，并预备播放。
				notsuportmsg:"您的浏览器不支持html5，无法使用该插件！"    //String型，浏览器不支持video标签时的提示，可使用html标签。			
			});

	});
</script>
<script>var _hmt = _hmt||[];(function(){var hm=document.createElement("script");hm.src ="//hm.baidu.com/hm.js?8867273989ac579c211d99bc3e0d00dd";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
</head>
<body>

<div class="video_container" hidden="true" style="margin:0 auto">H:\\kankan\\dmbj.mp4 </div>
</body>
</html>



