package com.zjx.service;

import java.util.List;

import com.zjx.bean.Power;

public interface PowerService {
	public List<Power> showPower();
	public List<Power> showPower1();
	public Power findPowerByName(String name);
	public Power findPowerById(int id);

}
