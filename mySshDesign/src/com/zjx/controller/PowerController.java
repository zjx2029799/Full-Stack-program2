package com.zjx.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zjx.bean.Power;
import com.zjx.bean.User;
import com.zjx.service.PowerService;

@Controller
@RequestMapping(value="/power")
public class PowerController {
	
	@Autowired
	private PowerService service;
	
	@ResponseBody
	@RequestMapping(value="/showPower")
	public Object showPower(HttpServletRequest req){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Power> powerlist = new ArrayList<Power>();
		User user = (User) req.getSession().getAttribute("user");
		if(user.getPower()==7){
			powerlist = service.showPower();
		}else{
			powerlist = service.showPower1();
		}
		map.put("powerlist", powerlist);
		return map;
	}

}
