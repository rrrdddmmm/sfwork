/**
 * 
 */
/**
 * @author renboh
 *
 */
package com.kevin.test;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;

import com.jhlabs.image.GaussianFilter;

public class ImageDealWith{
	
	public static void main(String args[]) {
		        BufferedImage image = null;
		        File file = null;

		        try {
		            file = new File("E:\\in.jpg");
		            image = ImageIO.read(file);

		            int width = image.getWidth();
		            int height = image.getHeight();

		            for (int j = 0; j < height; j++) {
		                for (int i = 0; i < width; i++) {
		                    int p = image.getRGB(i, j);

		                    int a = (p >> 24) & 0xff;
		                    int r = (p >> 16) & 0xff;
		                    int g = (p >> 8) & 0xff;
		                    int b = p & 0xff;

		                    int avg = (r + g + b) / 3;

		                    p = (a << 24) | (avg << 16) | (avg << 8) | avg;

		                    image.setRGB(i, j, p);
		                }
		            }


		            file = new File("E:\\Out.jpg");
		            ImageIO.write(image, "jpg", file);
		        } catch (IOException e) {
		            System.out.println(e);
		        }
		    }
	}
