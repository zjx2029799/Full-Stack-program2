<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.SimpleDateFormat"%>    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/matrix-media.css" />
<link href="${pageContext.request.contextPath }/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='${pageContext.request.contextPath }/http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

<title>网站留言</title>
</head>
<body>

	<%
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = df.format(date);
	%>

	<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">考试无忧主页</a></h1>
</div>
<!--close-Header-part--> 

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">

  <ul class="nav">
  
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">欢迎${user.username}</span><b class="caret"></b></a>
     
      <ul class="dropdown-menu">
      	<p:doPower value="普通修改">
        <li><a href="${pageContext.request.contextPath}/user/updateUser?id=${user.id}"><i class="icon-user">
        </i>修改个人登录密码</a></li> </p:doPower>
        
        <li class="divider"></li>
        <li><a href="${pageContext.request.contextPath}/MyFile/showMyFiles?id=${user.id}"><i class="icon-check"></i>我的下载</a></li>
        <li class="divider"></li>  
        <li><a href="#"><i class="icon-check"></i>我的学习计划</a></li>  
      </ul>   
    </li>
    <li class=""><a title="" href="${pageContext.request.contextPath}/user/logout"><i class="icon icon-share-alt"></i> <span class="text">退出登录</span></a></li>
  </ul>
</div>

<!--close-top-Header-menu-->

<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> index</a>
  <ul>
    <li class="active"><a href="${pageContext.request.contextPath}/jsp/studyClass.jsp"><i class="icon icon-home"></i> <span>资源导航</span></a> </li>
    <li> <a href="${pageContext.request.contextPath}/com/showFilesRank"><i class="icon icon-signal"></i> <span>资源下载排行耪</span></a> </li>
    <li> <a href="${pageContext.request.contextPath}/bul/showBuls"><i class="icon icon-inbox"></i> <span>网站公告</span></a> </li>
    <li><a href="${pageContext.request.contextPath}/jsp/chat.jsp"><i class="icon icon-th"></i> <span>网站留言平台</span></a></li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>关于我们</span></a></li>
    
    <li><a href="${pageContext.request.contextPath}/jsp/index.jsp"><i class="icon icon-tint"></i> <span>首页</span></a></li>
   </ul> 
</div>
<!--sidebar-menu-->

<div id="content">
  <div id="content-header">
    <h1>网站留言处</h1>
  </div>
  
  <form id="edit-profile" class="form-horizontal" action="${pageContext.request.contextPath }/chat/addChat" method="post">
									<fieldset>
									
										
										<div class="control-group">											
											<label class="control-label" for="title">留言标题</label>
											<div class="controls">
												<input type="text" class="input-medium disabled" id="ltitle" name="ltitle" />
												
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="date">发布日期</label>
											<div class="controls">
												<input type="text" id="ldate" name="ldate" value=<%=today%> readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										
										<div class="control-group">											
											<label class="control-label" for="body">发布内容</label>
											<div class="controls">
												<!-- <input type="text" class="input-medium" id="bbody" name="bbody" /> -->
												<textarea rows="8" cols="200" id=lbody name="lbody"></textarea>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<br /><br />
										
										<div class="control-group">											
											<label class="control-label" for="user">发布人</label>
											<div class="controls">
												<input type="text" class="input-medium" id="luser" name="luser" readonly="readonly"  value="${user.username}"/>
												
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->

											<br />
										
											
										<div class="form-actions">
											<button type="submit" class="btn btn-primary">保存</button> 
											<button class="btn">撤销</button>
										</div> <!-- /form-actions -->
									</fieldset>
								</form>
  
</div>
<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div>
<!--end-Footer-part-->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath }/js/jquery.ui.custom.js"></script> 
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath }/js/matrix.js"></script> 
<script src="${pageContext.request.contextPath }/js/matrix.chat.js"></script>
</body>
</html>