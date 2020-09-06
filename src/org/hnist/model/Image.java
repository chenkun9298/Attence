package org.hnist.model;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Image {
    private String imgId;//对应用户id
    private String imgStr;
    private String imgType;
	public String getImgId() {
		return imgId;
	}
	public void setImgId(String imgId) {
		this.imgId = imgId;
	}
	public String getImgStr() {
		return imgStr;
	}
	public void setImgStr(String imgStr) {
		this.imgStr = imgStr;
	}
	public String getImgType() {
		return imgType;
	}
	public void setImgType(String imgType) {
		this.imgType = imgType;
	}
    
}
