<%@ page language="java"
	import="java.sql.*,java.awt.*, java.awt.image.BufferedImage, javax.imageio.ImageIO,java.io.IOException,java.io.File,com.ComputerTrainingPlatform.*,com.jspsmart.upload.SmartUpload,com.jspsmart.upload.SmartUploadException"
	pageEncoding="GB18030"%>
<%!
	public static int getGray(int rgb){
		String str=Integer.toHexString(rgb);
		int r=Integer.parseInt(str.substring(2,4),16);
		int g=Integer.parseInt(str.substring(4,6),16);
		int b=Integer.parseInt(str.substring(6,8),16);
		//or 直接new个color对象
		Color c=new Color(rgb);
		r=c.getRed();
	    	g=c.getGreen();
		b=c.getBlue();
		int top=(r+g+b)/3;
		return (int)(top);
	}

	/**
	 * 自己加周围8个灰度值再除以9，算出其相对灰度值
	 * @param gray
	 * @param x
	 * @param y
	 * @param w
	 * @param h
	 * @return
	 */
	public static int  getAverageColor(int[][] gray, int x, int y, int w, int h)
	{
	    int rs = gray[x][y]
	                  	+ (x == 0 ? 255 : gray[x - 1][y])
			            + (x == 0 || y == 0 ? 255 : gray[x - 1][y - 1])
			            + (x == 0 || y == h - 1 ? 255 : gray[x - 1][y + 1])
			            + (y == 0 ? 255 : gray[x][y - 1])
			            + (y == h - 1 ? 255 : gray[x][y + 1])
			            + (x == w - 1 ? 255 : gray[x + 1][ y])
			            + (x == w - 1 || y == 0 ? 255 : gray[x + 1][y - 1])
			            + (x == w - 1 || y == h - 1 ? 255 : gray[x + 1][y + 1]);
	    return rs / 9;
	}
%>


<%
	request.setCharacterEncoding("GB18030");
	String fileDeliver = "";
	String filename = "";
	int count = 0;
	SmartUpload su = new SmartUpload();
	try {
		fileDeliver = su.getRequest().getParameter("fileDeliver");
		su.initialize(this.getServletConfig(), request, response);
		su.setDeniedFilesList("exe,bat,jsp,htm,html,,");
		su.upload();
		String absPath=new java.io.File(application.getRealPath(request.getRequestURI())).getParent();
		System.out.println(absPath);
		
		//File files = new File(""+absPath+"/source/"+fileDeliver+"");
		//if(!files.exists()){
		 //try {    
		  //      files.createNewFile();    
		  //  } catch (IOException e) {      
		  //      e.printStackTrace();    
		  //  }    
		//}
		
		//count = su.save(""+absPath+"/source/"+fileDeliver+"");
		count = su.save(""+absPath+"/source");
		out.println(count+"个文件上传成功！"+request.getContextPath()+"<br>");
		System.out.println("==============================:"+request.getContextPath());
		com.jspsmart.upload.File file =	 su.getFiles().getFile(0);
		filename = file.getFileName();
		System.out.println(filename);

		//filename = new String(filename.getBytes(),"UTF-8");
		
		System.out.println(fileDeliver);
		
		
		//BufferedImage bi=ImageIO.read(new File(""+absPath+"/source/"+fileDeliver+"/filename"));//通过imageio将图像载入
		BufferedImage bi=ImageIO.read(new File(""+absPath+"/source/"+filename+""));//通过imageio将图像载入
		int h=bi.getHeight();//获取图像的高
		int w=bi.getWidth();//获取图像的宽
		int rgb=bi.getRGB(0, 0);//获取指定坐标的ARGB的像素值
		int[][] gray=new int[w][h];
		for (int x = 0; x < w; x++) {
			for (int y = 0; y < h; y++) {
				gray[x][y]=getGray(bi.getRGB(x, y));
			}
		}
		
		BufferedImage nbi=new BufferedImage(w,h,BufferedImage.TYPE_INT_RGB);
		int SW=30 + (int)(10+Math.random()*(30-1+1));
		for (int x = 0; x < w; x++) {
			for (int y = 0; y < h; y++) {
				SW=50 + (int)(1+Math.random()*(10-1+1));
				if(getAverageColor(gray, x, y, w, h)>SW){
					int max=new Color(255,255,255).getRGB();
					nbi.setRGB(x, y, max);
				}else{
					int min=new Color(255, 0, 0).getRGB();
					nbi.setRGB(x, y, min);
				}
			}
		}
		ImageIO.write(nbi, "jpg", new File(""+absPath+"/source/"+filename+""));
	} catch (SmartUploadException e) { 
		e.printStackTrace();
	} 
	String username = (String) session.getAttribute("username");

	
	Connection conn = DB1.getConn();
	String sql = "insert into jzsourcefile values(null,'" +filename + "','" + username + "','" + fileDeliver + "',now())";
	DB1.executeUpdate(conn, sql);
	
	response.sendRedirect("managerJZ.jsp");
	
	DB1.close(conn);
%>

