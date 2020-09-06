package org.hnist.service;

import org.hnist.model.*;

import java.awt.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
	public interface UserService {
		
		public String login(@ModelAttribute Role user, Model model, HttpSession session); 		
		
		public String elogin(@ModelAttribute Role user, Model model, HttpSession session);
		public String eregister(@ModelAttribute Role user, Model model, HttpSession session);
		public String SetTime(@ModelAttribute WorkTime WorkTime, Model model, HttpSession session);
		public String toSetTime(Integer uptime, Integer downtime,Model model, HttpSession session);
	
		public String Exit(HttpSession session,HttpServletRequest request);
		
	}
