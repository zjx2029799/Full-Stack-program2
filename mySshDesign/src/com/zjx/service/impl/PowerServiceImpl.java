package com.zjx.service.impl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjx.bean.Power;
import com.zjx.dao.PowerDao;
import com.zjx.dao.impl.PowerDaoImpl;
import com.zjx.service.PowerService;


@Service("powerService")
@Transactional
public class PowerServiceImpl implements PowerService {

	@Autowired
	private PowerDao dao;
	
	@Override
	public List<Power> showPower() {
		
		return dao.showPower();
	}

	@Override
	public Power findPowerByName(String name) {
		
		return dao.findPowerByName(name);
	}

	@Override
	public Power findPowerById(int id) {
		
		return dao.findPowerById(id);
	}

	@Override
	public List<Power> showPower1() {
		return dao.showPower1();
	}

}
