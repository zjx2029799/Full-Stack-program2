package com.zjx.util;

import java.io.IOException;





import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zjx.bean.Power;
import com.zjx.service.PowerService;
import com.zjx.service.impl.PowerServiceImpl;

public class FindPowerTag extends TagSupport{
	
//	@Autowired
//	private PowerService service;
	
	private String pid;
//	ClassPathXmlApplicationContext wac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
//	PowerService service = (PowerService) wac.getBean("powerService");
	@Override
	public int doStartTag() throws JspException {
		PowerService service  = BeanHolder.getBean(pageContext, "powerService");
		
		//PowerService powerService = new PowerServiceImpl();
		//通过id来查询power对象
		//Power power = powerService.findPowerById(Integer.parseInt(pid));
		//页面的输出流
		
		Power power = service.findPowerById(Integer.parseInt(pid));
		
		JspWriter out = pageContext.getOut();
		try {
			out.println(power.getPowername());
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}
	
}
