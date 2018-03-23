package afteraction;


import java.io.IOException;

import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import utils.BeanJsonUtil;

/**
 * Servlet
 * @author Lanqiao08
 *
 */
@WebServlet("/uploadImagesServlet")
public class UploadImagesServlet extends  HttpServlet  {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SmartUpload  smartUpload=new  SmartUpload();
		smartUpload.initialize(getServletConfig(),request, response);
		smartUpload.setMaxFileSize(2*1024*1024);
		smartUpload.setAllowedFilesList("jpg,png,gif");
		try {
			smartUpload.upload();
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		
		String pic=  smartUpload.getRequest().getParameter("info");
		
		File file = smartUpload.getFiles().getFile(0); 
		String fileName = file.getFileName();  
        String suffix = fileName.substring(fileName.lastIndexOf("."));
		String webPath =request.getServletContext().getRealPath("/");
		String address="";
		if(!file.isMissing()){
			
			String picname = new Date().getTime() + ""; 
			String imgurls=picname+suffix;
			System.out.println(imgurls);
			HttpSession session=request.getSession();
			session.setAttribute("imgurl",imgurls);
			
			java.io.File webFile=new java.io.File(webPath+"/static/img/mainimg");
			if(!webFile.exists()){
				webFile.mkdirs();
			}
			
			address="/static/img/mainimg/"+picname+"."+file.getFileExt();
			System.out.println("address"+address);
			try {
				
				file.saveAs(address, File.SAVEAS_VIRTUAL);
			} catch (SmartUploadException e) {
				
				e.printStackTrace();
			}
		}
		//修改完毕之后，把图片路径 保存到数据库中
		String   project    =request.getContextPath();
		System.out.println(project+address);
		HashMap  map=new HashMap();
		map.put("url", project+address);
		BeanJsonUtil.writeJson(response, map);
	
	}
}
