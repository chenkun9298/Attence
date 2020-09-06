package org.hnist.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import org.hnist.model.*;
import org.hnist.service.*;;


/**
 * Servlet implementation class LoginServletFace
 */
@WebServlet("/user/login")
public class LoginServletFace extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FaceSearch faceSearch = new FaceSearchImp();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "*");
		response.setHeader("Access-Control-Max-Age", "3600");
		response.setHeader("Access-Control-Allow-Headers", "Content-Type, x-requested-with, X-Custom-Header, HaiYi-Access-Token");
		
        String imgStr=request.getParameter("imgStr");
        String imgType=request.getParameter("imgType");
        Image image = new Image();
        image.setImgStr(imgStr);
        image.setImgType(imgType);
        Result result = faceSearch.faceLogin(image);
        JSONObject json = new JSONObject(result.toString());
        System.out.println(json.get("start"));
        if(result.isStart()) {
        	System.out.println("识别成功");
        	System.out.println("123");
        	
      
        }else {
        	System.out.println("失败   "+result.getErrorMsg());
        	//这里处理人脸失败的逻辑
        }
        
        response.getWriter().print(json);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
