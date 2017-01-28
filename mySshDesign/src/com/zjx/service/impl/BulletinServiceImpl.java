package com.zjx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjx.bean.Bulletin;
import com.zjx.dao.BulletinDao;
import com.zjx.service.BulletinService;

@Service("BulletinService")
@Transactional
public class BulletinServiceImpl implements BulletinService {

	@Autowired
	private BulletinDao dao;

	@Override
	public void addBulletin(Bulletin b) {
		dao.addBulletin(b);
		
	}

	@Override
	public void delBulletin(Bulletin b) {
		dao.delBulletin(b);
		
	}

	@Override
	public void updateBulletin(Bulletin b) {
		dao.updateBulletin(b);
		
	}

	@Override
	public Bulletin findBulletinById(int id) {
		
		return dao.findBulletinById(id);
	}

	@Override
	public List<Bulletin> showBulletins(int page, int row) {
		
		return dao.showBulletins(row*(page-1),row);
	}

	@Override
	public int bcount() {
		return dao.bcount();
				
	}
}
