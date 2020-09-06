package org.hnist.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.hnist.model.*;
import org.hnist.service.UserService;


//����spring mvc����һ����������
@Controller
public class UserController {
    @Autowired
    private UserService UserService;
   
   
  	@RequestMapping("/login")
	public String login(@ModelAttribute Role user, Model model, HttpSession session) {
		return UserService.login(user, model, session);
	}

  	@RequestMapping("/elogin")
	public String elogin(@ModelAttribute Role user, Model model, HttpSession session) {
		return UserService.elogin(user, model, session);
	}
  	
	@RequestMapping("/SetTime")
	public String SetTime(@ModelAttribute WorkTime WorkTime, Model model, HttpSession session) {
		return UserService.SetTime(WorkTime, model, session);
	}
	@RequestMapping("/toSetTime")
	public String toSetTime(Integer uptime, Integer downtime,Model model, HttpSession session) {
		return UserService.toSetTime(uptime, downtime,model, session);
	}
 	@RequestMapping("/eregister")
	public String eregister(@ModelAttribute Role user, Model model, HttpSession session) {
		return UserService.eregister(user, model, session);
	}
 	@RequestMapping("/Exit")
	public String Exit(HttpSession session,HttpServletRequest request) {
		return UserService.Exit(session,request);
	}
	
 	
}
