package com.zjx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zjx.bean.CommonFile;
import com.zjx.bean.MyFiles;
import com.zjx.bean.User;
import com.zjx.service.MyFileService;

@Controller
@RequestMapping("/MyFile")
public class MyFileController {

	@Autowired
	private MyFileService service;
	
	@RequestMapping("/showMyFiles")
	public ModelAndView showMyFiles(@RequestParam(value="count", defaultValue="1") int count ,int id){
		ModelAndView mv = new ModelAndView("MyFiles");
		int page = 1;
		List<MyFiles> mlist = service.showMyFiles(count, 5, id);
		page = count;
		int total = (int) Math.ceil(service.MyFilesCount(id)/5.0);
		mv.addObject("page", page);
		mv.addObject("total", total);
		mv.addObject("mlist", mlist);
		mv.addObject("id", id);
		return mv;
	}
	
	@RequestMapping("/delMyFile")
	public ModelAndView delMyFiles(int cid, HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		MyFiles file = service.findMyFileById(cid);
		service.delMyFiles(file);
		User user = (User) req.getSession().getAttribute("user");
		mv.addObject("id", user.getId());
		mv.setViewName("redirect:/MyFile/showMyFiles");
		return mv;
		
	}
	
	@RequestMapping("/select")
	public ModelAndView select(String fname,String typename){
		ModelAndView mv = new ModelAndView("select1");
		int page = 1;
		List<MyFiles> mylist = null;
		if(!fname.equals("")&&!typename.equals("")){
			mylist = service.selectFiles2(fname, typename);
		}
		else if(!fname.equals("")&&typename.equals("")){
			
			mylist = service.selectFiles(fname);
		}else if(fname.equals("")&&!typename.equals("")){
			mylist = service.selectFiles1(typename);
		}else{
			mylist = null;
		}
		
		if(mylist.size()==0){
			mv.addObject("msg", "您要找的资源不存在");
		}else{
			mv.addObject("msg", "您要找的资源如下");
			mv.addObject("mylist", mylist);
		}

		
		
		return mv;
	}
}
