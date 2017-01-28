<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath }/AD/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/AD/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/AD/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/AD/css/adminia.css" rel="stylesheet" /> 
    <link href="${pageContext.request.contextPath }/AD/css/adminia-responsive.css" rel="stylesheet" /> 
    <link href="${pageContext.request.contextPath }/AD/css/pages/plans.css" rel="stylesheet" /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<script type="text/javascript">
	var str = "";
	function load() {

		/* var msg = "${msg}";
		if(msg=="UpdateUser"){
			$('#h3msg').html('修改用户');
			$('#username').attr("readonly","readonly");
		}else{
			$('#h3msg').html('添加用户');
		} */
			
		$.ajax({
		
			url:"${pageContext.request.contextPath }/power/showPower",
			data:"",
			type:"post",
			dataType:"json",
			async:true,
			success:function(data){
		
				var power = $('#power');
				
				
				
				for(var i = 0;i<data.powerlist.length;i++){
					var UpUserp = "${UpUser.power}";
					
					if(UpUserp!=undefined&&UpUserp==data.powerlist[i].id){
						power.append("<option selected='selected' value='"+data.powerlist[i].id+"'>"+data.powerlist[i].powername+"</option>")
					}else{
					power.append("<option value='"+data.powerlist[i].id+"'>"+data.powerlist[i].powername+"</option>");
					}
				} 
			}
		}) 
	}
	
	
	function namef(){
	 var name =	document.getElementById("username").value;
	 var nameSpan = document.getElementById("nameSpan");
	 if(name==null||name==""){
			nameSpan.innerHTML="用户名不能为空";
		}else{
			ajax(name);
			if(str=="yes"){
			/* 	if("${msg}"=="UpdateUser"){
					nameSpan.innerHTML="";
				}else{	 */
					nameSpan.innerHTML="用户名重复";
				//}
			}else{
				nameSpan.innerHTML="";
			}
		}
	}

	
	function passf() {
		 var password = document.getElementById("password").value;
		 var password2 = document.getElementById("password2").value;
		 var pass1Span = document.getElementById("pass1Span");
		 var pass2Span = document.getElementById("pass2Span");
		 
		 if(password==null||password==""){
			 	pass1Span.innerHTML="密码不能为空";
		 }else{
			 pass1Span.innerHTML="";
			 if(password.length<6){
				 	pass1Span.innerHTML="密码不能小于6位";
			 }else{
				 pass1Span.innerHTML="";
			 }
		 }
		 if(password2!=null&&password2!=""){
			 if(password1!=password2){
				 	pass2Span.innerHTML="两次密码不一致";
			 }else{
				 pass2Span.innerHTML="";
			 }
		 }
	}
	function emailf(){
		var email = document.getElementById("email").value;
		var emailSpan = document.getElementById("emailSpan");
		var text=/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
		if(text.test(email)){
			emailSpan.innerHTML="";
		}else{
			emailSpan.innerHTML="邮箱格式不正确";
		}
	}
	
	function ajax(name) {
		var xmlHttp;
		//判断浏览器的版本
		if(window.activeXObject){
			xmlHttp = new activeXObject("MicrosoftXMLHttp");
		}else{
			xmlHttp = new XMLHttpRequest();
		}
		//回调函数
		xmlHttp.onreadystatechange = function () {
			//xml文件状态
			if(xmlHttp.readyState==4){
			//服务器响应状态
				if(xmlHttp.status==200){
						str = xmlHttp.responseText;
						str = str.replace(/^\s*|\s*$/g, '');
				}
			}
		};
		//发送请求到后台（发送的方式，url，是否是异步）
		//xmlHttp.open("GET", "${pageContext.request.contextPath }/user/FindUserServlet?name="+name, true);
		//xmlHttp.send(null);
		xmlHttp.open("POST", "${pageContext.request.contextPath}/user/findUser", false);
		xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset:utf-8");
		xmlHttp.send("username="+name);
	}
	
</script>
</head>
<body onload="load()">
	
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 				
			</a>
			
			<a class="brand" href="./">Adminia Admin</a>
			
			<div class="nav-collapse">
			
				<ul class="nav pull-right">
					
					<li class="divider-vertical"></li>
					
					<li class="dropdown">
						
						<a data-toggle="dropdown" class="dropdown-toggle " href="#">
							${user.username }  <b class="caret"></b>							
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
						<img src="./img/headshot.png" alt="" class="thumbnail" />
					</div> <!-- /account-avatar -->
				
					<div class="account-details">
					
						<span class="account-name">${user.username }&nbsp;&nbsp;${user.email }</span>
						
						<span class="account-role">Administrator</span>
						
						<span class="account-actions">
							<a href="javascript:;">Profile</a> |
							
							<a href="javascript:;">Edit Settings</a>
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
				
				<div class="sidebar-extra">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
				</div> <!-- .sidebar-extra -->
				
				<br />
		
			</div> <!-- /span3 -->
			
			
			
			<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-th-large"></i>
					User Account					
				</h1>
				
				
				<div class="row">
					
					<div class="span9">
				
						<div class="widget">
							
							<div class="widget-header">
								<h3 id="h3msg"> 添加用户</h3>
							</div> <!-- /widget-header -->
									
							<div class="widget-content">
								
								
								
								<div class="tabbable">
						
						<br />
						
							<div class="tab-content">
								<div class="tab-pane active" id="1">
							 <form  class="form-horizontal" action="${pageContext.request.contextPath }/user/addUser" method="post">
									
										
										<div class="control-group">											
											<label class="control-label" for="username">用户名</label>
											<div class="controls">
												<input type="text" class="input-medium disabled" id="username" name="username" onblur="namef()" />
												<p id="nameSpan" style="color:red;"></p>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="power">权限</label>
											<div class="controls">
												<select name="power" id="power">
												</select>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										
										<div class="control-group">											                         
											<label class="control-label" for="email">Email</label>
											<div class="controls">
												<input type="text" class="input-medium" id="email" name="email"  onblur="emailf()" />
												<p id="emailSpan" style="color:red;"></p>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
						
										
										<div class="control-group">											
											<label class="control-label" for="password1">密码</label>
											<div class="controls">
												<input type="password" class="input-medium" id="password" name="password"  onblur="passf()" />
												<p id="pass1Span" style="color:red;"></p>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="password2">重新输入</label>
											<div class="controls">
												<input type="password" class="input-medium" id="password2"  onblur="passf()"/>
												<p id="pass2Span" style="color:red;"></p>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
											
											<br />
										
											
										<div class="form-actions">
											<button type="submit" class="btn btn-primary">保存</button> 
											<button class="btn">撤销</button>
										</div> <!-- /form-actions -->
								
								</form> 
								
								
								<!-- 简洁版form表单 -->
								
								<%-- <form  action="${pageContext.request.contextPath }/user/addUser" method="post">
												<input id="id" type="hidden" name="id" ">								
											<label >用户名</label>
												<input type="text" class="input-medium disabled" id="username" name="username" onblur="namef()" />
												<p id="nameSpan" style="color:red;"></p>
											<label >权限</label>
												<select name="power" id="power">
												</select>
											<label >Email</label>
												<input type="text" class="input-medium" id="email" name="email" onblur="emailf()" "/>
												<p id="emailSpan" style="color:red;"></p>
											<label >密码</label>
												<input type="password" class="input-medium" id="password" name="password" onblur="passf()" "/>
												<p id="pass1Span" style="color:red;"></p>
										
												<label >确认密码</label>
												<input type="password" class="input-medium" id="password2"  onblur="passf()"/>
												<p id="pass2Span" style="color:red;"></p>
				
										<div class="form-actions">
											<button type="submit" class="btn btn-primary">Save</button> 
											<button class="btn">Cancel</button>
										</div> <!-- /form-actions -->
											
								</form> --%>
								
								</div>
								
								
							</div>
						  
						  
						</div>
								
								
								
								
								
								
								
								
							</div> <!-- /widget-content -->
							
						</div> <!-- /widget -->
						
					</div> <!-- /span9 -->
					
				</div> <!-- /row -->
				
				
				
				
				
				
				
				
				
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


<script src="${pageContext.request.contextPath }/AD/js/bootstrap.js"></script>

  </body>
</html>