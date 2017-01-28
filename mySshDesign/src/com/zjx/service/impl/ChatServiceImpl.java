package com.zjx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjx.bean.Chat;
import com.zjx.dao.ChatDao;
import com.zjx.service.ChatService;

@Service("ChatService")
@Transactional
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatDao dao;

	@Override
	public void addChat(Chat c) {
		dao.addChat(c);
		
	}

	@Override
	public void delChat(Chat c) {
		dao.delChat(c);
		
	}

	@Override
	public void updateChat(Chat c) {
		dao.updateChat(c);
		
	}

	@Override
	public Chat findChatById(int id) {
		
		return dao.findChatById(id);
	}

	@Override
	public List<Chat> showChats(int page, int row) {
		
		return dao.showChats(row*(page-1), row);
	}

	@Override
	public int chatcount() {
		
		return dao.chatcount();
				
	}
	
	
}
