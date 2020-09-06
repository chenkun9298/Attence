package org.hnist.service;

import java.io.File;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.hnist.dao.UserMapper;

import org.hnist.model.*;
import org.hnist.service.*;


@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService{   
    @Resource
    public UserMapper userMapper;
    
    public String login(@ModelAttribute Role user, Model model, HttpSession session){
    	
    	System.out.println(user.getUsername()+user.getPassword());
    	List<Employee> listallEmployee = userMapper.listallEmployee();
 		session.setAttribute("listallEmployee", listallEmployee);
    	
   	if(userMapper.login(user) != null && userMapper.login(user).size() > 0 ) {
   		
   		 List<Role> user1 = userMapper.login(user); 
   		 if(user1.get(0).getRole()==1){
			System.out.println(user);
			String username =user.getUsername();
			session.setAttribute("username", username);
			
			return "admin/main";
   		 }
   		 else{
   			return "client/MyJsp";
   		 }
   		 
		}
		
    	
	return "/login";
	
   
 }
    public String SetTime(@ModelAttribute WorkTime WorkTime, Model model, HttpSession session){
    			
    	WorkTime worktime = userMapper.listSetTime();
    	
    	session.setAttribute("worktime", worktime);
    	
			return "admin/SetTime";
		

}
    public String toSetTime(Integer uptime, Integer downtime, Model model, HttpSession session){
			
    	 userMapper.toSetTime(uptime,downtime);
    	
			return "admin/SetTime";
		
}


    
 public String elogin(@ModelAttribute Role user, Model model, HttpSession session){

   			return "client/FaceLogin";
   		
   
 }
 public String eregister(@ModelAttribute Role user, Model model, HttpSession session){

		return "client/Register";
	

}

 public String Exit(HttpSession session,HttpServletRequest request){
 	Enumeration em = request.getSession().getAttributeNames();  //得到session中所有的属性名
 	while (em.hasMoreElements()) {
         request.getSession().removeAttribute(em.nextElement().toString()); //遍历删除session中的值
 	}
 	return "index"; 
 }
}
