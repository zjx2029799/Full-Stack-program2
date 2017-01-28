package com.zjx.dao;

import java.util.List;

import com.zjx.bean.Bulletin;

public interface BulletinDao {
	public void addBulletin(Bulletin b);
	public void delBulletin(Bulletin b);
	public void updateBulletin(Bulletin b);
	public Bulletin findBulletinById(int id);
	public List<Bulletin> showBulletins(int start, int row);
	public int bcount();
	
}
