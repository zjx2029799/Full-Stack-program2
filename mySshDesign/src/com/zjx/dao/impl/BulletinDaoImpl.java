package com.zjx.dao.impl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zjx.bean.Bulletin;
import com.zjx.dao.BulletinDao;


@Repository("BulletinDao")
public class BulletinDaoImpl implements BulletinDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addBulletin(Bulletin b) {
		sessionFactory.getCurrentSession().save(b);
		
	}

	@Override
	public void delBulletin(Bulletin b) {
		sessionFactory.getCurrentSession().delete(b);
		
	}

	@Override
	public void updateBulletin(Bulletin b) {
		sessionFactory.getCurrentSession().update(b);
		
	}

	@Override
	public Bulletin findBulletinById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Bulletin where id=?");
		query.setInteger(0, id);
		Bulletin b = null;
		if(query.list().size()>0){
			b = (Bulletin) query.list().get(0);
		}
		return b;
	}

	@Override
	public List<Bulletin> showBulletins(int start, int row) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Bulletin order by id");
		query.setFirstResult(start);
		query.setMaxResults(row);
		return query.list();
	}

	@Override
	public int bcount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Bulletin");
		return query.list().size();
	}
	
}
