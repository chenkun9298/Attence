package org.hnist.util;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FilenameUtils;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

public class MyUtil {
	/**
	 * 获得时间字符串
	 */
	public static String getStringID(){
		String id=null;
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		id=sdf.format(date);
		return id;
	}
	/**
	 * 防止文件重名
	 */
	public static String getRandom() {
		int n = (int)(Math.random()*100000000);
		return n + "";
	}
	/**
	 * 获得文件的扩展名
	 */
	public static String getFileExtendsName(String filenname) {
		int lastPointIndex = filenname.lastIndexOf(".");
		String extendsName = filenname.substring(lastPointIndex);
		return extendsName;
	}
	/**
	 * 下载保存时中文文件名字符编码转换方法
	 */
	public static String toUTF8String(String str){
		StringBuffer sb = new StringBuffer();
		int len = str.length();
		for(int i = 0; i < len; i++){
			//取出字符中的每个字符
			char c = str.charAt(i);
			//Unicode码值在0-255之间，不作处理
			if(c >= 0 && c <= 255){
				sb.append(c);
			}else{//转换UTF-8编码
				byte b[];
				try {
					b = Character.toString(c).getBytes("UTF-8");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
					b = null;
				}
				//转换为%HH的字符串形式
				for(int j = 0; j < b.length; j ++){
					int k = b[j];
					if(k < 0){
						k &= 255;
					}
					sb.append("%" + Integer.toHexString(k).toUpperCase());
				}
			}
		}
		return sb.toString();
	}

	/**
	 * 上传图片
	 * @param  request
	 * @param  teacher
	 * @param  myfile
	 * @throws IOException
	 */
	public static String upload(HttpServletRequest request,	MultipartFile myfile) throws IOException {
		String tpic = null;//装配后的图片地址
		//上传图片
		if(myfile!=null&&!myfile.isEmpty()){
			// 使用UUID给图片重命名，并去掉四个“-”
			String name = UUID.randomUUID().toString().replaceAll("-", "");
			// 获取文件的扩展名
			String ext = FilenameUtils.getExtension(myfile.getOriginalFilename());
			// 设置图片上传路径
			String url = request.getSession().getServletContext().getRealPath("/upload");
			// 检验文件夹是否存在
			isFolderExists(url);
			// 以绝对路径保存重名命后的图片
			myfile.transferTo(new File(url + "/" + name + "." + ext));
			// 装配图片地址
			tpic = "upload/" + name + "." + ext;
		}
		return tpic;
	}
	/**
	 * 验证文件夹是否存在
	 * @param strFolder
	 * @return
	 */
	public static boolean isFolderExists(String strFolder){
           File file = new File(strFolder);
        
           if (!file.exists())
           {
              if (file.mkdir())
              {
                  return true;
              }
              else{
                  return false;
              }
               
           }
           System.out.println("-----------------文件上传路径："+strFolder);
           return true;
       }
	/**
	 * 获取目录下所有文件(按时间排序)
	 * @param path
	 * @return
	 */
	public static List<File> getFileSort(String path) {
	    List<File> list = getFiles(path, new ArrayList<File>());
	    if (list != null && list.size() > 0) {
	        Collections.sort(list, new Comparator<File>() {
	            public int compare(File file, File newFile) {
	                if (file.lastModified() < newFile.lastModified()) {//降序<;升序>
	                    return 1;
	                } else if (file.lastModified() == newFile.lastModified()) {
	                    return 0;
	                } else {
	                    return -1;
	                }
	            }
	        });
	    }
	    return list;
	}
	/**
	 *  获取目录下所有文件
	 * @param realpath
	 * @param files
	 * @return
	 */
	public static List<File> getFiles(String realpath, List<File> files) {
	    File realFile = new File(realpath);
	    if (realFile.isDirectory()) {
	        File[] subfiles = realFile.listFiles();
	        for (File file : subfiles) {
	            if (file.isDirectory()) {
	                getFiles(file.getAbsolutePath(), files);
	            } else {
	                files.add(file);
	            }
	        }
	    }
	    return files;
	}
	/**
	 * 执行下载
	 */
	public static String download(@RequestParam String efile, HttpServletRequest request, HttpServletResponse response){
		String aFilePath = null; //要下载的文件路径
		FileInputStream in = null; //输入流
		ServletOutputStream out = null; //输出流
		try {
			//从workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps下载
			aFilePath = request.getServletContext().getRealPath("");
			//设置下载文件使用的报头
			response.setHeader("Content-Type", "application/x-msdownload" );
			response.setHeader("Content-Disposition", "attachment; filename="+ toUTF8String(efile));
			// 读入文件
			in = new FileInputStream(aFilePath + "\\"+ efile); 
			//得到响应对象的输出流，用于向客户端输出二进制数据
			out = response.getOutputStream();
			out.flush();
			int aRead = 0;
			byte b[] = new byte[1024];
			while ((aRead = in.read(b)) != -1 & in != null) {
				out.write(b,0,aRead);
			}
			out.flush();
			in.close();
			out.close();
		} catch (Throwable e) {
			e.printStackTrace();		} 
		System.out.println("下载成功！！");
		return null;
	}
}