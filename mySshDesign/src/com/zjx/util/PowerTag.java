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
	//����һ����������ȡҳ�洫����������ֵ
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
//�����ã�ԭ��δ֪
//	ClassPathXmlApplicationContext wac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
//	PowerService service = (PowerService) wac.getBean("powerService");
	
	private String value;
	
	@Override
	public int doStartTag() throws JspException {
		//ע��powerService
		PowerService service  = BeanHolder.getBean(pageContext, "powerService");
	
		Power power2 = service.findPowerByName(value);
		//ȡ��session
		HttpSession session = pageContext.getSession();
		//ȡ�õ�ǰ��¼�û��Ľ�ɫ��type 1���ͣ�
		User user = (User)session.getAttribute("user");
		//Power power1 = powerService.findPowerById(user.getPower());
		Power power1 = service.findPowerById(user.getPower());
		//�Ƚϵ�ǰ�û��Ƿ��б�ǩ�е�Ȩ��
		if((Integer.parseInt(power1.getValue(),2)&Integer.parseInt(power2.getValue(),2))!=0){
			//ִ�б�ǩ���е�����
			return EVAL_BODY_INCLUDE;
		}else{
			//������ǩ���е�����
			return SKIP_BODY;
		}
	}
	//���붨��get��set����
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
