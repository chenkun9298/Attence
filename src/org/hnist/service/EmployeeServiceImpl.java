package org.hnist.service;

import java.io.File;
import java.util.Date;
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
import org.hnist.dao.*;

import org.hnist.model.*;
import org.hnist.service.*;


@Service("EmployeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService{   
    @Resource
    public EmployeeMapper EmployeeMapper;
    

    
 public String addemployee(@ModelAttribute Employee employee, Model model, HttpSession session){
    	
  	
  	if(EmployeeMapper.selectbyEid(employee.getEid())!=null){
  		
  		model.addAttribute("msg","此员工编号已存在");
  		
  		return "admin/add";
  	}
  	EmployeeMapper.addemployee(employee);
  	EmployeeMapper.eregister(employee);
  	  	
	return "admin/charge";
	
   
 }
 
 
 public String listallEmployee(@ModelAttribute Employee employee, Model model, HttpSession session){
 		List<Employee> listallEmployee = EmployeeMapper.listallEmployee();
 		session.setAttribute("listallEmployee", listallEmployee);
 		
		return "admin/charge";
 
 }
 public String employeedel(Integer eid, Model model, HttpSession session){
		
	 EmployeeMapper.employeedel(eid);
	 List<Employee> listallEmployee = EmployeeMapper.listallEmployee();
		session.setAttribute("listallEmployee", listallEmployee);
		
		return "admin/charge";

}

 public String toemployeeEdit(Integer eid, Model model, HttpSession session){
		
	Employee  employee = EmployeeMapper.selectbyEid(eid);
	
		session.setAttribute("employee", employee);
		
		 
		 
		return "admin/edit";

}
 public String employeeEdit(@ModelAttribute Employee employee, Model model, HttpSession session){
		
	 EmployeeMapper.employeeEdit(employee);
	 List<Employee> listallEmployee = EmployeeMapper.listallEmployee();
		session.setAttribute("listallEmployee", listallEmployee);
		
		return "admin/charge";

}
 
 public String Clockin(Integer eid,String ClockinTime, Model model, HttpSession session){//签到
 	
	  	System.out.print(eid+ClockinTime);
	  	
	  	
	  	List<TimeCard> LsitallTimeCardByEid= EmployeeMapper.LsitallTimeCardByEid(eid);
	  	
	  	System.out.println(LsitallTimeCardByEid);
	  	
	  	
	  	String [] sp=ClockinTime.split(" ");//分割时间 sp【0】=日期  sp【1】=小时
		Date myDate = new Date();
	    int   uptime = EmployeeMapper.listSetTime().getUp();
	    int   downtime = EmployeeMapper.listSetTime().getDown();
	
		if(myDate.getHours()<uptime&&myDate.getHours()<12){//判断当前时间在上午，且在打卡时间内，即上午打卡
			int i = 0;
		  	for( i = 0;i <LsitallTimeCardByEid.size();i++){//用于判断今天上午是否打卡
		  		
		  		String a = LsitallTimeCardByEid.get(i).getOneTimecard();
		  		String [] sp1=a.split(" ");
		  		if(sp1[0].equals(sp[0])){
		  			model.addAttribute("msg","已经签到");
		  			break;
		  		}		  				  		
		     }
		  	
		  	if(i==LsitallTimeCardByEid.size()){
		  		EmployeeMapper.Clockin(eid, ClockinTime); 
		  		model.addAttribute("msg","签到成功");
		  	}//未查到今日上午打卡记录，则插入一条记录
		}
		
		else if(myDate.getHours()>12&&myDate.getHours()>downtime){//判断当前时间为下午，且时间已经过了下班时间，即下午打卡
			
			System.out.print(eid+ClockinTime);
			
			int i = 0;
		  	for( i = 0;i <LsitallTimeCardByEid.size();i++){//用于判断今天上午是否打卡
		  		
		  		String a = LsitallTimeCardByEid.get(i).getOneTimecard();
		  		String [] sp1=a.split(" ");
		  		if(sp1[0].equals(sp[0])&&LsitallTimeCardByEid.get(i).getTwoTimecard()!=null){
		  			
		  			model.addAttribute("msg","已经签退");
		  			
		  			break;
		  		}
		  		
	            if(sp1[0].equals(sp[0])&&LsitallTimeCardByEid.get(i).getTwoTimecard()==null){
	            	System.out.println("123");
	            	System.out.println(LsitallTimeCardByEid.get(i));
		  			model.addAttribute("msg","签退成功");
		  			EmployeeMapper.Clockout_update(LsitallTimeCardByEid.get(i).getId(),ClockinTime);
		  			break;
		  		}
		  		
		  		
		     }
		
		  	
		  	if(i==LsitallTimeCardByEid.size()){
		  		EmployeeMapper.Clockout_insert(eid, ClockinTime); 
		  		model.addAttribute("msg","签到成功");
		  	}//未查到今日上午打卡记录，则插入一条记录
			
		}
	
		return "employee/Clockin";
	
	   
	 }
 
 
 public String listallClock(Model model, HttpSession session){
		List<listallClock> listallClock = EmployeeMapper.listallClock();
		
		session.setAttribute("listallClock", listallClock);
		
		
		return "admin/ClockinCharge";

}
 
 
 public String TimecardDel(Integer eid, Model model, HttpSession session){
		
	 EmployeeMapper.TimecardDel(eid);
	 List<listallClock> listallClock = EmployeeMapper.listallClock();
		session.setAttribute("listallClock", listallClock);
		
		return "admin/ClockinCharge";

}
 
}
