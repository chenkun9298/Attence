package org.hnist.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class listallClock {
   
    private Integer eid;
    private String ename;
    private String dept;
    private String oneTimecard;
    private String twoTimecard;

	

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public String getOneTimecard() {
		return oneTimecard;
	}

	public void setOneTimecard(String oneTimecard) {
		this.oneTimecard = oneTimecard;
	}

	public String getTwoTimecard() {
		return twoTimecard;
	}

	public void setTwoTimecard(String twoTimecard) {
		this.twoTimecard = twoTimecard;
	}

	@Override
	public String toString() {
		return "ClockinCharge [eid=" + eid + ", ename=" + ename + ", dept=" + dept + ", oneTimecard=" + oneTimecard
				+ ", twoTimecard=" + twoTimecard + "]";
	}
    	

}
