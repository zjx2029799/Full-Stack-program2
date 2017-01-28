<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-login.css" />
        <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href='${pageContext.request.contextPath}/http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录考试无忧</title>
</head>
<body>
<body>
        <div id="loginbox">   
        	<h3><span style="color:red">${msg}&nbsp;${login}</span></h3>         
            <form id="loginform" class="form-vertical" action="${pageContext.request.contextPath}/user/login">
				 <div class="control-group normal_text"> <h3>考试无忧</h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" id="username" name="username" placeholder="Username" />
                        	<span id="sname"></span>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" id="password" name="password" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <!-- <div id="remember-me" class="pull-left">
					<input type="checkbox" name="remember" id="remember" />
					<label id="remember-label" for="remember">Remember Me</label>
				</div> -->
                <div class="form-actions">
                	<span class="pull-left"><button type="reset" class="btn btn-success" style="width: 86px; ">撤销</button></span>  
                    <span class="pull-right"><button type="submit" class="btn btn-success" style="width: 86px; ">登录</button></span>
                </div>
                
             <div class="create-account">
				<h5><p style="color:white">
					没有注册 ?&nbsp; 
					<a href="${pageContext.request.contextPath}/jsp/enroll.jsp" id="register-btn" class="">注册新用户</a>
				</p></h5>
			  </div>
            </form>
        </div>
        
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>  
        <script src="${pageContext.request.contextPath}/js/matrix.login.js"></script> 
    </body>
</body>
</html>