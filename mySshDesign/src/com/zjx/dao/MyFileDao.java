package com.zjx.dao;

import java.util.List;

import com.zjx.bean.CommonFile;
import com.zjx.bean.MyFiles;

public interface MyFileDao {
	public void addMyFiles(MyFiles file);
	public void delMyFiles(MyFiles file);
	public MyFiles findMyFileById(int id);
	public List<MyFiles> showMyFiles(int start, int row,int uid);
	public int MyFilesCount(int uid);
	
	public List<MyFiles> selectFiles(String fname);
	public List<MyFiles> selectFiles1(String typename);
	public List<MyFiles> selectFiles2(String fname,String typename);
}
