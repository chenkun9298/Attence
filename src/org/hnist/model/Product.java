package org.hnist.model;
import org.springframework.web.multipart.MultipartFile;
public class Product {
    private Integer pid;
    private Integer eid;
    private String ename;
    private String dept;   
    private String pimage;
    private String loadTime;
    
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
	public Integer getPid() {
        return pid;
    }
    public void setPid(Integer pid) {
        this.pid = pid;
    }
    public String getPimage() {
        return pimage;
    }
    public void setPimage(String pimage) {
        this.pimage = pimage;
    }
    public String getLoadTime() {
		return loadTime;
	}
	public void setLoadTime(String loadTime) {
		this.loadTime = loadTime;
	}
    @Override
	public String toString() {
		return "Product [pid=" + pid + ", eid=" + eid + ", ename=" + ename + ", dept=" + dept + ", pimage=" + pimage
				+ ", loadTime=" + loadTime + "]";
	}
}