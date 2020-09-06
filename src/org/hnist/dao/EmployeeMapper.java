package org.hnist.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hnist.model.*;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

    @Repository("EmployeeMapper")
    @Mapper
	public interface EmployeeMapper {
		
    	
    	public Employee selectbyEid(Integer eid);
    	public int addemployee(Employee employee);
    	public int employeeEdit(Employee employee);
    	public List<listallClock> listallClock();   	
    	public List<Employee> listallEmployee();
    	public List<TimeCard> LsitallTimeCardByEid(Integer eid);
    	public int employeedel(Integer eid);
    	
    	public WorkTime listSetTime();
    	public int eregister(Employee employee);
 	   public int Clockin(@Param("eid")Integer eid,@Param("ClockinTime")String ClockinTime);
 	   
 	  public int Clockout_insert(@Param("eid")Integer eid,@Param("ClockoutTime")String ClockoutTime);
 	 public int Clockout_update(@Param("id")Integer id,@Param("ClockoutTime")String ClockoutTime);
 	public int TimecardDel(Integer eid);
 	 
	}

