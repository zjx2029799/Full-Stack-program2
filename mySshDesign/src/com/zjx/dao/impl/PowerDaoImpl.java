package com.zjx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zjx.bean.Power;
import com.zjx.dao.PowerDao;

@Repository("PowerDao")
public class PowerDaoImpl implements PowerDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Power> showPower() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Power where type='2'");
		return query.list();
	}

	@Override
	public Power findPowerByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Power where powername=?");
		query.setString(0, name);
		List<Power> powerlist = query.list();
		Power power = null;
		if(powerlist.size()>0){
			power = powerlist.get(0);
		}
		return power;
	}

	@Override
	public Power findPowerById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Power where id=?");
		query.setInteger(0, id);
		List<Power> powerlist = query.list();
		Power power = null;
		if(powerlist.size()>0){
			power = powerlist.get(0);
		}
		return power;
	}

	@Override
	public List<Power> showPower1() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Power where type='2' and id!=?");
		query.setInteger(0, 7);
		return query.list();
	}

}
