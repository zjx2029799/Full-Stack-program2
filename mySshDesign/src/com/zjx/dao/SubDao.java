package com.zjx.dao;

import java.util.List;

import com.zjx.bean.Subjects;

public interface SubDao {

	public void addSub(Subjects sub);
	public List<Subjects> showSub();
}
