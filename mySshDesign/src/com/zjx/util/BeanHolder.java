package com.zjx.util;

import javax.servlet.ServletContext;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.PageContext;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class BeanHolder {
	@SuppressWarnings({"unchecked"})
	public static <T> T getBean(JspContext jspContext, String beanId)
	{
	T bean = null;
	PageContext pageContext = (PageContext) jspContext;
	if (pageContext != null)
	{
	ServletContext servletContext = pageContext.getServletContext();
	if (servletContext != null)
	{
	WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
	if (wac != null && wac.containsBean(beanId))
	{
	bean = (T) wac.getBean(beanId);
	}
	}
	}
	return bean;
	}
}
