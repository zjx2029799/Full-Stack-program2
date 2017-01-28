package com.zjx.service.impl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjx.bean.User;
import com.zjx.dao.UserDao;
import com.zjx.service.UserService;

@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;
	
	@Override
	public void addUser(User user) {
		dao.addUser(user);
		
	}

	@Override
	public void delUser(User user) {
		dao.delUser(user);
		
		
	}

	@Override
	public void updateUser(User user) {
		dao.updateUser(user);
		
	}

	@Override
	public User findUserByPN(User user) {
		
		return dao.findUserByPN(user);
	}

	@Override
	public int UserCount() {
		
		return dao.UserCount();
	}

	@Override
	public List<User> showUser() {
		
		return dao.showUser();
	}

	@Override
	public List<User> showUser(int page, int row) {
		
		return dao.showUser(row*(page-1), row);
	}

	@Override
	public User findUserById(int id) {
		
		return dao.findUserById(id);
	}

	@Override
	public User findUserByName(String name) {
		
		return dao.findUserByName(name);
	}

	@Override
	public List<User> showUser1(int page, int row) {
		return dao.showUser1(row*(page-1), row);
	}

}
