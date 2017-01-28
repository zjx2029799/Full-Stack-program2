package com.zjx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.zjx.bean.Subjects;
import com.zjx.dao.SubDao;

@Repository("SubDao")
public class SubDaoImpl implements SubDao {

	@Autowired 
	private SessionFactory sessionFactory;
	
	@Override
	public void addSub(Subjects sub) {
		sessionFactory.getCurrentSession().save(sub);
		
	}

	@Override
	public List<Subjects> showSub() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Subjects");
		List<Subjects> sublist = query.list();
		return sublist;
	}

}
