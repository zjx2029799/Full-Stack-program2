package com.zjx.service;

import java.util.List;

import com.zjx.bean.CommonFile;
import com.zjx.bean.MyFiles;

public interface MyFileService {

	public void addMyFiles(MyFiles file);
	public MyFiles findMyFileById(int cid);
	public void delMyFiles(MyFiles file);
	public List<MyFiles> showMyFiles(int page, int row,int uid);
	public int MyFilesCount(int uid);
	
	public List<MyFiles> selectFiles(String fname);
	public List<MyFiles> selectFiles1(String typename);
	public List<MyFiles> selectFiles2(String fname,String typename);
}
