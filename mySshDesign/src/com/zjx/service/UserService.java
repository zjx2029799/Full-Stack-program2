package com.zjx.service;

import java.util.List;

import com.zjx.bean.User;

public interface UserService {
	public void addUser(User user);
	public void delUser(User user);
	public void updateUser(User user);
	public User findUserByPN(User user);
	public User findUserById(int id);
	public User findUserByName(String name);
	public int UserCount();
	public List<User> showUser();
	public List<User> showUser(int start,int end);
	public List<User> showUser1(int start,int end);
}
