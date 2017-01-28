package com.zjx.service;

import java.util.List;

import com.zjx.bean.Chat;

public interface ChatService {
	public void addChat(Chat c);
	public void delChat(Chat c);
	public void updateChat(Chat c);
	public Chat findChatById(int id);
	public List<Chat> showChats(int page, int row);
	public int chatcount();
}
