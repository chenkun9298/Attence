package org.hnist.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.hnist.model.*;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

    @Repository("UserMapper")
    @Mapper
	public interface UserMapper {
		//显示所有的记录
    	public List<Role> login(Role user);
    	public List<Employee> listallEmployee();
    	public WorkTime listSetTime();
    	public int toSetTime(Integer uptime,Integer downtime);
    	
	}

