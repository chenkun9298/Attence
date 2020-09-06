package org.hnist.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import org.hnist.util.*;

import org.apache.commons.io.FilenameUtils;
import org.hnist.model.*;
import org.hnist.service.*;


//����spring mvc����һ����������
@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService EmployeeService;
   

  	
  	@RequestMapping("/addemployee")
	public String addemployee(@ModelAttribute Employee employee, Model model, HttpSession session) {
		return EmployeeService.addemployee(employee, model, session);
	}
	
  	@RequestMapping("/add")
	public String add() {
		return "admin/add";
	}
  	
	
	@RequestMapping("/listall")
	public String listall(@ModelAttribute Employee employee, Model model, HttpSession session) {
		return EmployeeService.listallEmployee(employee, model, session);
	}
  	
  	
  	
	@RequestMapping("/employeedel")
	public String employeedel(Integer eid, Model model, HttpSession session) {
		return EmployeeService.employeedel(eid, model, session);
	}
	
	@RequestMapping("/toemployeeEdit")
	public String toemployeeEdit(Integer eid, Model model, HttpSession session) {
		return EmployeeService.toemployeeEdit(eid, model, session);
		
	}
	@RequestMapping("/employeeEdit")
	public String employeeEdit(@ModelAttribute Employee employee, Model model, HttpSession session) {
		return EmployeeService.employeeEdit(employee, model, session);
		
	}
  	
  	@RequestMapping("/Clockin")
	public String Clockin(Integer eid,String ClockinTime, Model model, HttpSession session) {
		return EmployeeService.Clockin(eid,ClockinTime,model, session);
	}
  	
	@RequestMapping("/listallClock")
	public String listallClock(Model model, HttpSession session) {
		return EmployeeService.listallClock(model, session);
	}
	@RequestMapping("/TimecardDel")
	public String TimecardDel(Integer eid, Model model, HttpSession session) {
		return EmployeeService.TimecardDel(eid, model, session);
	}
  	
	
	
}
