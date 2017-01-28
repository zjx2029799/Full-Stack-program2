package com.zjx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjx.bean.Subjects;
import com.zjx.dao.SubDao;
import com.zjx.service.SubService;


@Service
@Transactional
public class SubServiceImpl implements SubService {

	@Autowired
	private SubDao dao;
	
	@Override
	public void addSub(Subjects sub) {
		dao.addSub(sub);
		
	}

	@Override
	public List<Subjects> showSub() {
		
		return dao.showSub();
	}

}
