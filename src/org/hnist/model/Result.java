package org.hnist.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
public class Result {
    private boolean start;
    private String userId;
    private String msg;
    private int faceNum;
    private String errorMsg;
    private int error_code;
	public boolean isStart() {
		return start;
	}
	public void setStart(boolean start) {
		this.start = start;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getFaceNum() {
		return faceNum;
	}
	public void setFaceNum(int faceNum) {
		this.faceNum = faceNum;
	}
	public String getErrorMsg() {
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	
	public int getError_code() {
		return error_code;
	}
	public void setError_code(int error_code) {
		this.error_code = error_code;
	}
	@Override
	public String toString() {
		return "{start:" + start + ", userId:" + userId + ", msg:" + msg + ", faceNum:" + faceNum + ", errorMsg:"
				+ errorMsg + ",error_code:"+error_code+"}";
	}
    
	
    
}
