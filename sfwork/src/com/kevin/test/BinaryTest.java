package com.kevin.test;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
 
import javax.imageio.ImageIO;
/**
 * 图像二值化
 * @author renboh
 *
 */
public class BinaryTest {
	
	public static void main(String[] args) throws IOException {
		BufferedImage bi=ImageIO.read(new File("E:\\in.jpg"));//通过imageio将图像载入
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
		
		ImageIO.write(nbi, "jpg", new File("E:\\out.jpg"));
	}
 
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
 
}