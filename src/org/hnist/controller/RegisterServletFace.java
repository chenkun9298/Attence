package org.hnist.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import org.hnist.service.*;
import org.hnist.model.*;


/**
 * Servlet implementation class RegisterServletFace
 */
@WebServlet("/user/register")
public class RegisterServletFace extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FaceRegister faceRegister = new FaceRegisterImp();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "*");
		response.setHeader("Access-Control-Max-Age", "3600");
		response.setHeader("Access-Control-Allow-Headers", "Content-Type, x-requested-with, X-Custom-Header, HaiYi-Access-Token");
		request.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
	    String imgId=request.getParameter("imgId");
	    String imgStr = request.getParameter("imgStr");
	    String imgType = request.getParameter("imgType");
	    Image image = new Image();
	    image.setImgId(imgId);
	    image.setImgStr(imgStr);
	    image.setImgType(imgType);
	    Result result = faceRegister.register(image);
	    JSONObject json = new JSONObject(result.toString());
	    response.getWriter().print(json);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
