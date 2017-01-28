package com.zjx.util;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zjx.bean.Power;
import com.zjx.bean.User;
import com.zjx.service.PowerService;
import com.zjx.service.impl.PowerServiceImpl;
@ResponseBody
public class PowerTag extends TagSupport{
	//定义一个变量来获取页面传过来的属性值
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
//不能用，原因未知
//	ClassPathXmlApplicationContext wac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
//	PowerService service = (PowerService) wac.getBean("powerService");
	
	private String value;
	
	@Override
	public int doStartTag() throws JspException {
		//注入powerService
		PowerService service  = BeanHolder.getBean(pageContext, "powerService");
	
		Power power2 = service.findPowerByName(value);
		//取得session
		HttpSession session = pageContext.getSession();
		//取得当前登录用户的角色（type 1类型）
		User user = (User)session.getAttribute("user");
		//Power power1 = powerService.findPowerById(user.getPower());
		Power power1 = service.findPowerById(user.getPower());
		//比较当前用户是否有标签中的权限
		if((Integer.parseInt(power1.getValue(),2)&Integer.parseInt(power2.getValue(),2))!=0){
			//执行标签体中的内容
			return EVAL_BODY_INCLUDE;
		}else{
			//跳过标签体中的内容
			return SKIP_BODY;
		}
	}
	//必须定义get和set方法
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
