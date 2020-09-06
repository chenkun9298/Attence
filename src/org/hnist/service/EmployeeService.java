package org.hnist.service;

import org.hnist.model.*;

import java.awt.List;

import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
	public interface EmployeeService {
		
	
		public String addemployee(@ModelAttribute Employee employee, Model model, HttpSession session); 
		public String listallEmployee(@ModelAttribute Employee employee, Model model, HttpSession session); 
		
		
		public String employeedel(Integer eid, Model model, HttpSession session);
		public String toemployeeEdit(Integer eid, Model model, HttpSession session);
		
		public String employeeEdit(Employee employee, Model model, HttpSession session);
		public String Clockin(Integer eid,String ClockinTime, Model model, HttpSession session); 
		
		public String listallClock(Model model, HttpSession session); 
		
		public String TimecardDel(Integer eid, Model model, HttpSession session);
	}
