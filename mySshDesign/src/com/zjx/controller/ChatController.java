package com.zjx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zjx.bean.Chat;
import com.zjx.service.ChatService;

@Controller
@RequestMapping("/chat")
public class ChatController {

	@Autowired
	private ChatService service;
	
	@RequestMapping("/addChat")
	public ModelAndView addChat(Chat chat){
		ModelAndView mv = new ModelAndView("success");
		service.addChat(chat);
		mv.addObject("msg", "添加留言成功，管理员将在近期回复您~");
		//mv.setViewName("redirect:/chat/showChats");
		return mv;
	}
	
	@RequestMapping("/delChat")
	public ModelAndView delChat(int id){
		ModelAndView mv = new ModelAndView();
		Chat chat = service.findChatById(id);
		service.delChat(chat);
		mv.setViewName("redirect:/chat/showChats");
		return mv;
	}
	
	@RequestMapping("/showChats")
	public ModelAndView showChats(@RequestParam(value="count", defaultValue="1") int count ){
		ModelAndView mv = new ModelAndView("jsp2/maChat");
		int page = 1;
		List<Chat> clist = service.showChats(count, 3);
		page = count;
		int total = (int) Math.ceil(service.chatcount()/3.0);
		
		mv.addObject("page", page);
		mv.addObject("total", total);
		mv.addObject("clist", clist);
		return mv;
	}
	
}
