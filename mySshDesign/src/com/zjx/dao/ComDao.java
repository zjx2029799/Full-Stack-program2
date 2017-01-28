package com.zjx.dao;

import java.util.List;

import com.zjx.bean.CommonFile;



public interface ComDao {
	public void addFiles(CommonFile com); 
	public void updateCom(CommonFile com);
	public List<CommonFile> showFiles();
	public List<CommonFile> showFiles(int start, int row);
	public List<CommonFile> showFilesRank(int start, int row);
	public List<CommonFile> showFiles1(int start, int row,String str);
	public List<CommonFile> showMyFiles(int start, int row,int id);
	
	public List<CommonFile> selectFiles(String fname);
	public List<CommonFile> selectFiles1(String typename);
	public List<CommonFile> selectFiles2(String fname,String typename);
	
	
	
	public int showComCount();
	public int showComCount1(String str);
	public int showComCount2(int id);
	public void delCom(CommonFile com);
	public CommonFile findComById(int cid);
}
