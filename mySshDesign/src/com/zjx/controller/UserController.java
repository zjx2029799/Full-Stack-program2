package com.zjx.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.zjx.bean.User;
import com.zjx.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	private UserService service;
	
	@RequestMapping(value="/login")
	public ModelAndView login( User user, ModelMap model,HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		User newUser = service.findUserByPN(user);

			 if(newUser!=null&&newUser.getId()!=0){
				 if(newUser.getPower()==7||newUser.getPower()==8){
					 req.getSession().setAttribute("user", newUser);
					 model.addAttribute("user", newUser);
					 mv.setViewName("jsp2/index");	
				 }else{
					 req.getSession().setAttribute("user", newUser);
					 model.addAttribute("user", newUser);
					 mv.setViewName("index");
				 }
			 }else{
				 mv.setViewName("login");
				 mv.addObject("msg", "用户名或密码错误");
			 }
			 
		
		return mv;
	} 
	
	@RequestMapping(value="/showUser")
	public ModelAndView showUser(@RequestParam(value="count",defaultValue="1") int count,HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		int page = 1;
		User user = (User) req.getSession().getAttribute("user");
		if(user!=null){
			
			List<User> userlist = new ArrayList<User>();
			if(user.getPower()==7){
				userlist = service.showUser(count, 5);
			}else{
				userlist = service.showUser1(count, 5);
			}
			page = count;
			int countuser = service.UserCount();
			int total = (int) Math.ceil(countuser/5.0);
			mv.addObject("total", total);
			mv.addObject("page", page);
			mv.addObject("userlist", userlist);
			mv.setViewName("jsp2/showUser");
		}else{
			mv.addObject("login", "您没有权限，请先登录");
			mv.setViewName("login");
		}
		
		return mv;
	}
	
	@RequestMapping(value="/addUser")
	public ModelAndView addUser(User user){
		ModelAndView mv = new ModelAndView();
		service.addUser(user);
		mv.setViewName("redirect:/user/showUser");
		return mv;
	}
	
	@RequestMapping(value="/addNUser")
	public ModelAndView addNUser(User user){
		ModelAndView mv = new ModelAndView("success");
		user.setPower(2);
		service.addUser(user);
		return mv;
	}

	
	@RequestMapping(value="/addUpUser")
	public ModelAndView addUpUser(User user,int id,HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		user.setId(id);
		service.updateUser(user);
		User nowUser = (User) req.getSession().getAttribute("user");
		if(nowUser.getPower()==2){
			mv.addObject("msg", "修改成功");
			mv.setViewName("success");
		}else{
			mv.setViewName("redirect:/user/showUser");
		}
		
		return mv;
	}
	
	
	@RequestMapping(value="/delUser")
	public ModelAndView delUser(int id){
		ModelAndView mv = new ModelAndView();
		User user = service.findUserById(id);
		service.delUser(user);
		mv.setViewName("redirect:/user/showUser");
		return mv;
	}
	
	
	@RequestMapping(value="/updateUser")
	public ModelAndView updateUser(int id,HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		User user = service.findUserById(id);
		User nowUser = (User) req.getSession().getAttribute("user");
		if(nowUser.getPower()==2){
			mv.setViewName("update");
		}else{
			mv.setViewName("jsp2/updateUser");
		}
		mv.addObject("UpUser", user);
		mv.addObject("msg", "UpdateUser");
		mv.addObject("msg", "更新用户信息");
		return mv;
	}
	
	@RequestMapping(value="/findUser")
	public ModelAndView findUser(String username, HttpServletResponse resp){
		ModelAndView mv = new ModelAndView();
		User newUser = service.findUserByName(username);
		PrintWriter pw = null;
		try {
			pw = resp.getWriter();
			if(newUser!=null&&newUser.getId()!=0){
				pw.print("yes");
			}else{
				pw.print("no");
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			pw.flush();
			pw.close();
		}
		
		
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest req){
		ModelAndView mv = new ModelAndView("login");
		req.getSession().invalidate();
		return mv;
	}
	
}
