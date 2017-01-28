package com.zjx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zjx.bean.Bulletin;
import com.zjx.bean.User;
import com.zjx.service.BulletinService;

@Controller
@RequestMapping("/bul")
public class BulletinController {

	@Autowired 
	private BulletinService service;
	
	@RequestMapping("/addBul")
	public ModelAndView addBul(Bulletin b){
		ModelAndView mv = new ModelAndView();
		service.addBulletin(b);	
		mv.setViewName("redirect:/bul/showBuls");
		return mv;
	}
	
	@RequestMapping("/addUpBul")
	public ModelAndView addUpBul(Bulletin b, int id){
		ModelAndView mv = new ModelAndView();
		b.setId(id);
		service.updateBulletin(b);
		mv.setViewName("redirect:/bul/showBuls");
		return mv;
	}
	
	
	@RequestMapping("/delBul")
	public ModelAndView delBul(int id){
		ModelAndView mv = new ModelAndView();
		Bulletin b = service.findBulletinById(id);
		service.delBulletin(b);
		mv.setViewName("redirect:/bul/showBuls");
		return mv;
	}
	
	@RequestMapping("/updateBul")
	public ModelAndView updateBul(int id){
		ModelAndView mv = new ModelAndView("jsp2/updateBul");
		Bulletin b = service.findBulletinById(id);
		
		mv.addObject("msg", "UpBul");
		mv.addObject("UpBul", b);
		return mv;
	}
	
	
	@RequestMapping("/showBuls")
	public ModelAndView showBuls(@RequestParam(value="count",defaultValue="1") int count, HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		int page = 1;
		List<Bulletin> blist = service.showBulletins(count, 5);
		page = count;
		int total = (int) Math.ceil(service.bcount()/5.0);
		mv.addObject("page", page);
		mv.addObject("total", total);
		mv.addObject("blist", blist);
		User user = (User) req.getSession().getAttribute("user");
		if(user.getPower()==2){
			mv.setViewName("bulletin");
		}else{
			mv.setViewName("jsp2/maBulletin");
		}
		return mv;
	}
	
}
