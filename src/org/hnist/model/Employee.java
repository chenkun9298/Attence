package org.hnist.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Employee {
    private Integer eid;
    private String ename;
    private String dept;
    private String sex;
    private Integer age;

    

	public Integer getEid() {
		return eid;
	}
	public void setEid(Integer eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", dept=" + dept + ", sex=" + sex + ", age=" + age + "]";
	}

	


}
