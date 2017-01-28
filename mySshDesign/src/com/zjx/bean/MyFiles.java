package com.zjx.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="myfile")
public class MyFiles {
	private int mid;
	private int userid;
	private int mcid;
	private String myfiles;
	private String filesub;
	private String fileclass;
	private String filedate;
	
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	

	public int getMcid() {
		return mcid;
	}
	public void setMcid(int mcid) {
		this.mcid = mcid;
	}
	public String getMyfiles() {
		return myfiles;
	}
	public void setMyfiles(String myfiles) {
		this.myfiles = myfiles;
	}
	public String getFilesub() {
		return filesub;
	}
	public void setFilesub(String filesub) {
		this.filesub = filesub;
	}
	public String getFileclass() {
		return fileclass;
	}
	public void setFileclass(String fileclass) {
		this.fileclass = fileclass;
	}
	public String getFiledate() {
		return filedate;
	}
	public void setFiledate(String filedate) {
		this.filedate = filedate;
	}
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="gen")
	@SequenceGenerator(name="gen", allocationSize=1,initialValue=100,sequenceName="seq_myfile_id")
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	
	
	
	
}
