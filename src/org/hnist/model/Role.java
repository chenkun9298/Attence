package org.hnist.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/*
    班级
*/
public class Role {
	
	private     String username;  //班级名
	private     String password;//简介
	private     Integer role;   //ID号
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Role [username=" + username + ", password=" + password + ", role=" + role + "]";
	}
	
}
