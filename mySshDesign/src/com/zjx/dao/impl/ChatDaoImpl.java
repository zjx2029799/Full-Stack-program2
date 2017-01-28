package com.zjx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zjx.bean.Chat;
import com.zjx.dao.ChatDao;

@Repository("ChatDao")
public class ChatDaoImpl implements ChatDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addChat(Chat c) {
		sessionFactory.getCurrentSession().save(c);
		
	}

	@Override
	public void delChat(Chat c) {
		sessionFactory.getCurrentSession().delete(c);
		
	}

	@Override
	public void updateChat(Chat c) {
		sessionFactory.getCurrentSession().update(c);
		
	}

	@Override
	public Chat findChatById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Chat where id=?");
		query.setInteger(0, id);
		Chat c = null;
		if(query.list().size()>0){
			c = (Chat) query.list().get(0);
		}
		return c;
	}

	@Override
	public List<Chat> showChats(int start, int row) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Chat order by id");
		query.setFirstResult(start);
		query.setMaxResults(row);
		return query.list();
	}

	@Override
	public int chatcount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Chat");
		return query.list().size();
	}

}
