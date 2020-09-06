package org.hnist.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TimeCard {
    private Integer id;
    private Integer eid;
    private String oneTimecard;

    private String twoTimecard;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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
		return "TimeCard [id=" + id + ", eid=" + eid + ", oneTimecard=" + oneTimecard + ", twoTimecard=" + twoTimecard
				+ "]";
	}
    

	

}
