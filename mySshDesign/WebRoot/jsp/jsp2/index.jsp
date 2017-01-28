<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="/PowerTag"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath }/AD/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/AD/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/AD/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/AD/css/adminia.css" rel="stylesheet" /> 
    <link href="${pageContext.request.contextPath }/AD/css/adminia-responsive.css" rel="stylesheet" /> 
    <link href="${pageContext.request.contextPath }/AD/css/pages/dashboard.css" rel="stylesheet" /> 
<title>后台管理首页</title>
</head>
<body>
	
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 				
			</a>
			
			
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">

					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${user.username } <b class="caret"></b>							
						</a>
						
						<ul class="dropdown-menu">
							<li>
								<a href="${pageContext.request.contextPath}/user/updateUser?id=${user.id}"><i class="icon-user"></i>修改个人用户信息 </a>
							</li>
							
							<!-- <li>
								<a href="./change_password.html"><i class="icon-lock"></i>我的下载</a>
							</li> -->
							
							<li class="divider"></li>
							
							<li>
								<a href="${pageContext.request.contextPath}/user/logout"><i class="icon-off"></i>退出登录</a>
							</li>
						</ul>
					</li>
				</ul>
				
			</div> <!-- /nav-collapse -->
			
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->




<div id="content">
	
	<div class="container">
		
		<div class="row">
			
			<div class="span3">
				
				<div class="account-container">
				
					<div class="account-avatar">
						<img src="${pageContext.request.contextPath }/AD/img/headshot.png" alt="" class="thumbnail" />
					</div> <!-- /account-avatar -->
				
					<div class="account-details">
					
						<span class="account-name">${user.username}</span>
						
						<span class="account-role">${user.email}</span> 
						
					
					</div> <!-- /account-details -->
				
				</div> <!-- /account-container -->
				
				<hr />
				
				<ul id="main-nav" class="nav nav-tabs nav-stacked">
					<!-- 在表单中写上传模块，通过jar包实现上传，并且将上传文件的路径保存到数据库中 -->				
				    
				    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>资料库管理</span> <span class="label label-important">3</span></a>
					      <ul>
					        <li><a href="${pageContext.request.contextPath }/jsp/jsp2/upload.jsp">资料上传</a></li>
					        <li><a href="${pageContext.request.contextPath }/com/showFiles">资料库修改</a></li>
					        <li><a href="${pageContext.request.contextPath }/jsp/jsp2/addSub.jsp">增加科目分类</a></li>
					      </ul>
					    </li>
				  
				    
				    <li>
						<a href="${pageContext.request.contextPath }/user/showUser">
							<i class="icon-lock"></i>
							修改/删除用户
						</a>
					</li>
					
					
					<li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>公告管理</span> <span class="label label-important">2</span></a>
					      <ul>
					        <li><a href="${pageContext.request.contextPath }/jsp/jsp2/addBulletin.jsp">添加公告</a></li>
					        <li><a href="${pageContext.request.contextPath }/bul/showBuls">更改或删除公告</a></li>
					      </ul>
					    </li>
					
					
					<li>
						<a href="${pageContext.request.contextPath }/chat/showChats">
							<i class="icon-th-list"></i>
							留言板互动管理		
						</a>
					</li>
					
					<p:doPower value="用户:添加"><li>
						<a href="${pageContext.request.contextPath }/jsp/jsp2/addUser.jsp">
							<i class="icon-user"></i>
							添加用户							
						</a>
					</li></p:doPower>
					
					<li>
						<a href="${pageContext.request.contextPath }/jsp/jsp2/index.jsp">
							<i class="icon-lock"></i>
							主页	
						</a>
					</li>
					
				</ul>	
				
				<hr />
				
				<br />
		
			</div> <!-- /span3 -->
			
			
			
			<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-home"></i>
					系统后台管理					
				</h1>
				
							
				
				<div class="widget-box" style="height: 270px; ">
    	<div ><h4 style="color:blue">后台说明</h4></div>
          <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">资料库管理</a></li>
              <li><a data-toggle="tab" href="#tab2">修改删除用户</a></li>
              <li><a data-toggle="tab" href="#tab3">公告管理</a></li>
              <li><a data-toggle="tab" href="#tab4">留言板管理</a></li>
              <li><a data-toggle="tab" href="#tab5">添加用户</a></li>
            </ul>
          </div>
          <div class="widget-content tab-content" style="height: 343px; ">
            <div id="tab1" class="tab-pane active">
              <p>资料库管理用于后台整体资料上传下载删除，是整个后台系统的核心也是网站业务管理的主要项目，管理员通过后台将海量资源呈现给各户</p>
              <img src="${pageContext.request.contextPath}/img/ziliao.jpg" alt="demo-image"/>
            </div>
              
            <div id="tab2" class="tab-pane"> <img src="${pageContext.request.contextPath}/img/jiaoliu.jpg" alt="demo-image"/>
              <p>实现对注册用户的管理，包括普通管理员，删除和修改操作</p>
            </div>
            
             <div id="tab3" class="tab-pane">
              <p>由管理员对网站前台公告处进行增删改操作</p>
              <img src="${pageContext.request.contextPath}/img/kaoshi.jpg" alt="demo-image"/>
             </div>
             
             <div id="tab4" class="tab-pane">
              <p>通过后台对前台用户的留言进行管理，防止出现煽动性非法留言，以及防止留言过多影响用户体验</p>
              <img src="${pageContext.request.contextPath}/img/kaoshi.jpg" alt="demo-image"/>
             </div>
             
             <div id="tab5" class="tab-pane">
              <p>管理员通过后台直接添加用户，可赋予相对权限</p>
              <img src="${pageContext.request.contextPath}/img/kaoshi.jpg" alt="demo-image"/>
             </div>
          </div>
        </div>
				
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
					
	
<div id="footer">
	
	<div class="container">				
		<hr />
		<p>&copy; 2016 Go Ideate.</p>
	</div> <!-- /container -->
	
</div> <!-- /footer -->


    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath }/AD/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath }/AD/js/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath }/AD/js/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath }/AD/js/jquery.flot.pie.js"></script>
<script src="${pageContext.request.contextPath }/AD/js/jquery.flot.orderBars.js"></script>
<script src="${pageContext.request.contextPath }/AD/js/jquery.flot.resize.js"></script>


<script src="${pageContext.request.contextPath }/AD/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/AD/js/charts/bar.js"></script>

</body>
</html>