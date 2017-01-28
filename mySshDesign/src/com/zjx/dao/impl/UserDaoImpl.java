package com.zjx.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zjx.bean.User;
import com.zjx.dao.UserDao;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addUser(User user) {
		sessionFactory.getCurrentSession().save(user);
		
	}

	@Override
	public void delUser(User user) {
		sessionFactory.getCurrentSession().delete(user);
		
	}

	@Override
	public void updateUser(User user) {
		sessionFactory.getCurrentSession().update(user);
		
	}

	@Override
	public User findUserByPN(User user) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User w where w.username=? and w.password=?");
		query.setString(0, user.getUsername());
		query.setString(1, user.getPassword());
		List<User> userlist = query.list();
		User newUser = null;
		if(userlist.size()>0){
			newUser = userlist.get(0);
		}
		return newUser;
	}

	@Override
	public int UserCount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User");
		List<User> userlist = query.list();
		int total = userlist.size();
		return total;
	}

	@Override
	public List<User> showUser() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User order by id");
		List<User> userlist = query.list();
		return userlist;
	}

	@Override
	public List<User> showUser(int start, int row) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User order by id");
		query.setFirstResult(start);//页数
		query.setMaxResults(row);//每页个数
		return query.list();
	}

	@Override
	public User findUserById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User w where w.id=?");
		query.setInteger(0, id);
		List<User> userlist = query.list();
		User newUser = null;
		if(userlist.size()>0){
			newUser = userlist.get(0);
		}
		return newUser;
	}

	@Override
	public User findUserByName(String name) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User where username=?");
		query.setString(0, name);
		User newUser = null;
		if(query.list().size()>0){
			newUser = (User) query.list().get(0);
		}
		return newUser;
	}

	@Override
	public List<User> showUser1(int start, int row) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User where power!=? order by id");
		query.setInteger(0, 7);
		query.setFirstResult(start);//页数
		query.setMaxResults(row);//每页个数
		return query.list();
	}
}
