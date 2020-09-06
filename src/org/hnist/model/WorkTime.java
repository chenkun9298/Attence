package org.hnist.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/*
    班级
*/
public class WorkTime {
	
	private     int up;  //上班时间
	private     int down;//下班时间
	public int getUp() {
		return up;
	}
	public void setUp(int up) {
		this.up = up;
	}
	public int getDown() {
		return down;
	}
	public void setDown(int down) {
		this.down = down;
	}
	@Override
	public String toString() {
		return "WorkTime [up=" + up + ", down=" + down + "]";
	}
	
	
	
}
