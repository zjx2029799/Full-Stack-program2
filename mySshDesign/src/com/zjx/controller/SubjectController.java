package com.zjx.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.zjx.bean.Subjects;

import com.zjx.service.SubService;

@Controller
@RequestMapping("/sub")
public class SubjectController {
	@Autowired
	private SubService service;
	
	@RequestMapping("/findTypes")
	@ResponseBody
	public Object findTypes(){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Subjects> sublist = service.showSub();
		map.put("sublist", sublist);
		return map;
	}
	
	@RequestMapping("/addSub")
	public ModelAndView addSub(Subjects sub){
		ModelAndView mv = new ModelAndView("jsp2/index");
		service.addSub(sub);
		return mv;
	}
}
