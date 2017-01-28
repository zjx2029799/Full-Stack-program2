package com.zjx.service.impl;

import java.util.List;











import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




import org.springframework.transaction.annotation.Transactional;

import com.zjx.bean.CommonFile;
import com.zjx.dao.ComDao;
import com.zjx.service.ComService;

@Service("ComService")
@Transactional
public class ComServiceImpl implements ComService {

	@Autowired
	private ComDao dao;
	
	@Override
	public void addFiles(CommonFile com) {
		dao.addFiles(com);
		
	}

	@Override
	public List<CommonFile> showFiles() {
		
		return dao.showFiles();
	}

	@Override
	public List<CommonFile> showFiles(int page, int row) {
		
		return dao.showFiles(row*(page-1), row);
	}

	@Override
	public int showComCount() {
		
		return dao.showComCount();
				
	}

	@Override
	public void delCom(CommonFile com) {
		dao.delCom(com);
	}

	@Override
	public CommonFile findComById(int cid) {
		
		return dao.findComById(cid);
	}

	@Override
	public List<CommonFile> showFiles1(int page, int row, String str) {
		
		return dao.showFiles1(row*(page-1), row, str);
	}

	@Override
	public int showComCount1(String str) {
		return dao.showComCount1(str);
	}

	@Override
	public void updateCom(CommonFile com) {
		dao.updateCom(com);
		
	}

	@Override
	public List<CommonFile> showFilesRank(int page, int row) {
		return dao.showFilesRank(row*(page-1), row);
	}

	@Override
	public List<CommonFile> showMyFiles(int page, int row, int id) {
		return dao.showMyFiles((page-1)*row, row, id);
	}

	@Override
	public int showComCount2(int id) {
		return dao.showComCount2(id);
	}

	@Override
	public List<CommonFile> selectFiles(String fname) {
		
		return dao.selectFiles(fname);
	}

	@Override
	public List<CommonFile> selectFiles1(String typename) {
		return dao.selectFiles1(typename);
	}

	@Override
	public List<CommonFile> selectFiles2(String fname, String typename) {
		return dao.selectFiles2(fname, typename);
	}

}
