package com.kevin.test;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
 
/**
 * @author Cytosine
 * @thanks Wizard,BreakShadow
 */
public class SimpleBinarization {
    public static void main(String args[]){
//    	File file = new File();
//    	file.exists()
        for(int i=0;i<100;i++){
            BufferedImage bi=httpsGetImg(httpsGetImgURL());
            int width=bi.getWidth();
            int height=bi.getHeight();
            int pixel;
            BufferedImage binary=new BufferedImage(width,height,BufferedImage.TYPE_BYTE_BINARY);
            for(int minx=bi.getMinX();minx<width;minx++){
                for(int miny=bi.getMinY();miny<height;miny++){
                    pixel=bi.getRGB(minx, miny);
                    if(pixel==-1){
                        binary.setRGB(minx, miny, Color.WHITE.getRGB());
                    }else{
                        binary.setRGB(minx, miny, Color.BLACK.getRGB());
                    }
                }
            }
            String p="E:\\in.jpg";
            File f=new File(p);
            try {
                ImageIO.write(bi, "png", f);
            } catch (IOException ex) {
                Logger.getLogger(SimpleBinarization.class.getName()).log(Level.SEVERE, null, ex);
            }
            String path="E:\\Out.jpg";
            File file=new File(path);
            try {
                ImageIO.write(binary, "png", file);
            } catch (IOException ex) {
                Logger.getLogger(SimpleBinarization.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    public static String httpsGetImgURL(){
        StringBuffer requestResult=new StringBuffer();
        BufferedReader bufferedReader=null;
        try{
            SSLContext ssl=SSLContext.getInstance("TLS");
            ssl.init(null, new TrustManager[]{cytoX509TrustManager}, null);
            URL url=new URL("https://passport.baidu.com/v2/?reggetcodestr");
            HttpsURLConnection conn=(HttpsURLConnection)url.openConnection();
            conn.setSSLSocketFactory(ssl.getSocketFactory());
            conn.setRequestMethod("GET");
            conn.setDoOutput(true);
            conn.connect();
            bufferedReader=new BufferedReader(new InputStreamReader(conn.getInputStream()));
        }catch(Exception ex){
            ex.printStackTrace();
        }
        try{
            String line;
            while((line=bufferedReader.readLine())!=null){
                requestResult.append(line);
            }
            bufferedReader.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        String all=requestResult.toString();
        String[] spl=all.split("'");
        String verifystr=spl[3];
        String result="https://passport.baidu.com/cgi-bin/genimage?"+verifystr;
        return result;
    }
    public static BufferedImage httpsGetImg(String url){
        BufferedInputStream bufferedInputStream=null;
        ByteArrayOutputStream byteArrayOutputStream=new ByteArrayOutputStream();
        try{
            SSLContext ssl=SSLContext.getInstance("TLS");
            ssl.init(null, new TrustManager[]{cytoX509TrustManager}, null);
            URL realURL=new URL(url);
            HttpsURLConnection conn=(HttpsURLConnection)realURL.openConnection();
            conn.setSSLSocketFactory(ssl.getSocketFactory());
            conn.setRequestMethod("GET");
            conn.connect();
            bufferedInputStream=new BufferedInputStream(conn.getInputStream());
        }catch(Exception ex){
            ex.printStackTrace();
        }
        try{
            int b;
            while((b=bufferedInputStream.read())!=-1){
                byteArrayOutputStream.write(b);
            }
            bufferedInputStream.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        byte[] imgData=byteArrayOutputStream.toByteArray();
        ByteArrayInputStream in=new ByteArrayInputStream(imgData);
        BufferedImage result=null;
        try {
            result = ImageIO.read(in);
        } catch (IOException ex) {
//            Logger.getLogger(DownloadImgWithoutType.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    private static X509TrustManager cytoX509TrustManager=new X509TrustManager(){
 
        public X509Certificate[] getAcceptedIssuers(){
                return null;
        }
 
        @Override
        public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }
 
        @Override
        public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }
    };
}