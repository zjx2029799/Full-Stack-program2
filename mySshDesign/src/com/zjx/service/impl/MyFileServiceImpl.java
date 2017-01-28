package com.zjx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjx.bean.CommonFile;
import com.zjx.bean.MyFiles;
import com.zjx.dao.MyFileDao;
import com.zjx.service.MyFileService;

@Service("MyFileService")
@Transactional
public class MyFileServiceImpl implements MyFileService {

	@Autowired
	private MyFileDao dao;

	@Override
	public void addMyFiles(MyFiles file) {
		dao.addMyFiles(file);
		
	}

	@Override
	public void delMyFiles(MyFiles file) {
		dao.delMyFiles(file);
		
	}

	@Override
	public List<MyFiles> showMyFiles(int page, int row, int uid) {
		
		return dao.showMyFiles(row*(page-1), row, uid);
	}

	@Override
	public int MyFilesCount(int uid) {
		
		return dao.MyFilesCount(uid);
	}

	@Override
	public MyFiles findMyFileById(int cid) {
		
		return dao.findMyFileById(cid);
	}

	@Override
	public List<MyFiles> selectFiles(String fname) {
		return dao.selectFiles(fname);
	}

	@Override
	public List<MyFiles> selectFiles1(String typename) {
		return dao.selectFiles1(typename);
	}

	@Override
	public List<MyFiles> selectFiles2(String fname, String typename) {
		return dao.selectFiles2(fname, typename);
	}
}
