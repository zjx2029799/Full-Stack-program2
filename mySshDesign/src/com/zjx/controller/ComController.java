package com.zjx.controller;

import java.io.File;
import java.util.*;
import java.text.SimpleDateFormat;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.zjx.bean.CommonFile;
import com.zjx.bean.MyFiles;
import com.zjx.bean.User;
import com.zjx.service.ComService;
import com.zjx.service.MyFileService;
import com.zjx.service.UserService;


@Controller
@RequestMapping("/com")
public class ComController extends HttpServlet {
	@Autowired
	private ComService service;
	
	@Autowired
	private MyFileService service1;
	
	@RequestMapping("/file")
	public ModelAndView upload(CommonFile com, @RequestParam("file") MultipartFile file){
		ModelAndView mv = new ModelAndView();
		String fileName = file.getOriginalFilename();
		
		String fileExtName = fileName.substring(fileName.lastIndexOf(".")+1);
		File newFile = new File("E:/java8.0/serverlet/apache-tomcat-8.0.30/webapps/mySshDesign/study_file",fileName);
		if(!newFile.exists()){
			newFile.mkdirs();
		}
		try {
			file.transferTo(newFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		com.setFileclass(fileExtName);
		com.setFilename(fileName);
		service.addFiles(com);
		mv.setViewName("redirect:/com/showFiles");
		return mv;
	}
	
	@RequestMapping("/showFiles")
	public ModelAndView showFiles(@RequestParam(value="count",defaultValue="1") int count){
		ModelAndView mv = new ModelAndView("jsp2/manageFile");
		int page = 1;
		List<CommonFile> comlist = service.showFiles(count, 10);
		page = count;
		int total = (int) Math.ceil(service.showComCount()/10.0);
		mv.addObject("page", page);
		mv.addObject("total", total);
		mv.addObject("comlist", comlist);
		return mv;
	}
	
	@RequestMapping("/delCom")
	public ModelAndView delCom(int cid){
		ModelAndView mv = new ModelAndView();
		CommonFile com = service.findComById(cid);
		service.delCom(com);
		File f = new File("E:/java8.0/serverlet/apache-tomcat-8.0.30/webapps/mySshDesign/study_file"+"\\"+com.getFilename());
		if(f.exists()){
			f.delete();
		}
		mv.setViewName("redirect:/com/showFiles");
		return mv;
	}
	
	@RequestMapping("/download")
	public ModelAndView download(int cid,HttpServletResponse resp,HttpServletRequest req){
		ModelAndView mv = new ModelAndView();
		CommonFile com = service.findComById(cid);
		User user = (User) req.getSession().getAttribute("user");
		if(com==null||com.getCid()==0){
			mv.addObject("msg", "您所下载的资源不存在或已被删除,如有需求请联系系统管理员");
			mv.setViewName("error1");
		}else{
			String fileName = com.getFilename();
			
			//得到要下载的文件
			File file = new File("E:/java8.0/serverlet/apache-tomcat-8.0.30/webapps/mySshDesign/study_file" + "\\" + fileName);
			if(!file.exists()){
				mv.addObject("message", "您要下载的资源已被删除！！");
				mv.setViewName("error1");
			}
			//处理文件名
			String realname = fileName.substring(fileName.indexOf("_")+1);
			//设置响应头，控制浏览器下载该文件
			try {
				resp.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
				FileInputStream in = new FileInputStream("E:/java8.0/serverlet/apache-tomcat-8.0.30/webapps/mySshDesign/study_file" + "\\" + fileName);
				OutputStream out = resp.getOutputStream();
				byte[] buffer = new byte[2048];
				int i = in.read(buffer);
				while(i!=-1){
					out.write(buffer, 0, i);
					i = in.read(buffer);
				}
				in.close();
				out.close();
				
				 com.setCount(com.getCount()+1);
			        com.setGrade(com.getCount()/100.0+1.25);
			        service.updateCom(com);
			        
			        Date date = new Date();
			    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			    	String today = df.format(date);
			        
			        MyFiles files = new MyFiles();
			        files.setUserid(user.getId());
			        files.setMcid(com.getCid());
			        files.setFileclass(com.getFileclass());
			        files.setFilesub(com.getTypename());
			        files.setMyfiles(com.getFilename());
			        files.setFiledate(today);
			        service1.addMyFiles(files);
			        
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	       
	        
		}
		return mv;
	}
	
	@RequestMapping("/showFiles1")
	public ModelAndView showFiles1(@RequestParam(value="count",defaultValue="1") int count,String typename){
		ModelAndView mv = new ModelAndView("listfile");
		int page = 1;
		List<CommonFile> comlist = service.showFiles1(count,5,typename);
		page = count;
		int total = (int) Math.ceil(service.showComCount1(typename)/5.0);
		mv.addObject("page", page);
		mv.addObject("total", total);
		mv.addObject("comlist", comlist);
		mv.addObject("typename", typename);
		return mv;
	
	}
	
	@RequestMapping("/showFilesRank")
	public ModelAndView showFilesRank(@RequestParam(value="count",defaultValue="1") int count){
		ModelAndView mv = new ModelAndView("rank");
		int page = 1;
		List<CommonFile> comlist = service.showFilesRank(count, 100);
	
		page = count;
		int total = (int) Math.ceil(service.showComCount()/100.0);
		mv.addObject("msg", "学习资源下载排行榜");
		mv.addObject("page", page);
		mv.addObject("total", total);
		mv.addObject("comlist", comlist);
		
		return mv;
	}
	
	
	@RequestMapping("/select")
	public ModelAndView select(String fname,String typename){
		ModelAndView mv = new ModelAndView("select");
		int page = 1;
		List<CommonFile> comlist = null;
		if(!fname.equals("")&&!typename.equals("")){
			comlist = service.selectFiles2(fname, typename);
		}
		else if(!fname.equals("")&&typename.equals("")){
			
			comlist = service.selectFiles(fname);
		}else if(fname.equals("")&&!typename.equals("")){
			comlist = service.selectFiles1(typename);
		}else{
			comlist = null;
		}
		
		if(comlist.size()==0){
			mv.addObject("msg", "您要找的资源不存在");
		}else{
			mv.addObject("msg", "您要找的资源如下");
			mv.addObject("comlist", comlist);
		}

		
		
		return mv;
	}
	
}
