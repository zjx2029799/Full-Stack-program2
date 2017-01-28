package com.zjx.service;

import java.util.List;

import com.zjx.bean.Bulletin;

public interface BulletinService {
	public void addBulletin(Bulletin b);
	public void delBulletin(Bulletin b);
	public void updateBulletin(Bulletin b);
	public Bulletin findBulletinById(int id);
	public List<Bulletin> showBulletins(int page, int row);
	public int bcount();
}
