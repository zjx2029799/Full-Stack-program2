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
<title>留言管理</title>
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
							${user.username }<b class="caret"></b>							
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
						
						<span class="account-role">${user.power }</span>
						
						<span class="account-actions">
							${user.email}
						</span>
					
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
					留言管理					
				</h1>
				
				
				
				
				
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>公告</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>留言id</th>
									<th>留言标题</th>
									<th>留言日期</th>
									<th>留言内容</th>
									<th>发布人</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${clist}" var="chat">
									<tr>
										<td>${chat.id }</td>
										<td>${chat.ltitle}</td>
										<td>${chat.ldate }</td>
										<td>${chat.lbody}</td>
										<td>${chat.luser}</td>
										<td class="action-td">
										<%-- 	<p:doPower value="用户:下载"><a href="${pageContext.request.contextPath }/com/DownLoadServlet?cid=${com.cid}" class="btn btn-small btn-warning" >
												<i class="icon-ok"> 下载</i>								
											</a></p:doPower> --%>	
											<p:doPower value="用户:删除"><a href="${pageContext.request.contextPath }/chat/delChat?id=${chat.id }" class="btn btn-small" >
												<i class="icon-remove">删除</i>						
											</a></p:doPower>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<ul class="pager">
							<c:if test=""></c:if>
						  <li class="previous <c:if test="${page==1}">disabled</c:if>" ><a href="<c:if test="${page!=1}">${pageContext.request.contextPath }/chat/showChats?count=${page-1}</c:if>#">&larr; 上一页</a></li>
						  <li class="next <c:if test="${page==total}">disabled</c:if>"><a href="<c:if test="${page!=total}">${pageContext.request.contextPath }/chat/showChats?count=${page+1}</c:if>#">下一页 &rarr;</a></li>
						</ul>



					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				

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