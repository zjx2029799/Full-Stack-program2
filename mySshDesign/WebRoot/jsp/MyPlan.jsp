<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="${pageContext.request.contextPath}/AD/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/AD/css/bootstrap-responsive.min.css" rel="stylesheet" />
    
    <link href="${pageContext.request.contextPath}AD/http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/AD/css/font-awesome.css" rel="stylesheet" />
    
    <link href="${pageContext.request.contextPath}/AD/css/adminia.css" rel="stylesheet" /> 
    <link href="${pageContext.request.contextPath}/AD/css/adminia-responsive.css" rel="stylesheet" /> 
    
    
    <link href="${pageContext.request.contextPath}/AD/css/pages/plans.css" rel="stylesheet" /> 
    
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
<link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.gritter.css" />
<link href='${pageContext.request.contextPath}/http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

<title>Insert title here</title>
</head>
<body>

<div id="header">
  <h1><a href="dashboard.html">考试无忧主页</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">

  <ul class="nav">
  
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
     
      <ul class="dropdown-menu">
      	<p:doPower value="普通修改">
        <li><a href="${pageContext.request.contextPath}/jsp/update.jsp"><i class="icon-user">
        </i>修改个人登录密码</a></li> </p:doPower>
        
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i>我的下载</a></li>
        <li class="divider"></li>  
        <li><a href="#"><i class="icon-check"></i>我的学习计划</a></li>  
      </ul>   
    </li>
    <li class=""><a title="" href="${pageContext.request.contextPath}/LogoutServlet"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> index</a>
  <ul>
    <li class="active"><a href="${pageContext.request.contextPath}/jsp/dataStruct.jsp"><i class="icon icon-home"></i> <span>资源导航</span></a> </li>
    <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>资源下载排行耪</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>网站公告</span></a> </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>网站交流论坛</span></a></li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>关于我们</span></a></li>
    
    <li><a href="${pageContext.request.contextPath}/jsp/index.jsp"><i class="icon icon-tint"></i> <span>首页</span></a></li>
   </ul> 
</div>

<!--main-container-part-->
<div id="content" style="width: 3000px; ">

 <div class="container-fluid">
    
<!--End-Chart-box--> 
    <div class="row-fluid" style="width: 2000px;height: 1000px; ">
		<div class="span9">
				<h1 class="page-title" style="width:980px; ">
					<i class="icon-th-list"></i>
					Study Plans					
				</h1>
								
				<div class="widget" style="width: 1000px; ">
					
					<div class="widget-header">
						<h3>Available Plans</h3>
					</div> <!-- /widget-header -->
														
					<div class="widget-content">
						
						<div class="pricing-plans plans-3">
							
						<div class="plan-container">
					        <div class="plan">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		Micro	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
					                	<span class="note">$</span>15<span class="term">Per Month</span>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	        
						        
						        <div class="plan-features">
									<ul>
										<li><strong>Free</strong> setup</li>
										<li><strong>1</strong> Website</li>
										<li><strong>2</strong> Projects</li>
										<li><strong>1GB</strong> Storage</li>
										<li><strong>$0</strong> Google Adwords Credit</li>
									</ul>
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn">Purchase Now</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					    <div class="plan-container">
					        <div class="plan">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		Starter	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
					                	<span class="note">$</span>35<span class="term">Per Month</span>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->       
						        
						        <div class="plan-features">
									<ul>
										<li><strong>Free</strong> setup</li>
										<li><strong>5</strong> Website</li>
										<li><strong>10</strong> Projects</li>
										<li><strong>5GB</strong> Storage</li>
										<li><strong>$25</strong> Google Adwords Credit</li>
									</ul>
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn">Purchase Now</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
					    
					    <div class="plan-container">
					        <div class="plan orange">
						        <div class="plan-header">
					                
						        	<div class="plan-title">
						        		Business	        		
					        		</div> <!-- /plan-title -->
					                
						            <div class="plan-price">
					                	<span class="note">$</span>75<span class="term">Per Month</span>
									</div> <!-- /plan-price -->
									
						        </div> <!-- /plan-header -->	          
						        
						        <div class="plan-features">
									<ul>					
										<li><strong>Free</strong> setup</li>
										<li><strong>20</strong> Website</li>
										<li><strong>35</strong> Projects</li>
										<li><strong>Unlimited</strong> Storage</li>
										<li><strong>$65</strong> Google Adwords Credit</li>
									</ul>
								</div> <!-- /plan-features -->
								
								<div class="plan-actions">				
									<a href="javascript:;" class="btn">Purchase Now</a>				
								</div> <!-- /plan-actions -->
					
							</div> <!-- /plan -->
					    </div> <!-- /plan-container -->
				
				
					</div> <!-- /pricing-plans -->
										
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
				
				
				
				<div class="widget">
					
					<div class="widget-header">
						<h3>Account Information</h3>
					</div> <!-- /widget-header -->
														
					<div class="widget-content">
						
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
				
				
			</div>   <!--   span9 -->
    </div>
  </div>
</div>

<!--end-main-container-part-->

<!--Footer-part-->



<!--end-Footer-part-->

<script src="${pageContext.request.contextPath}/js/excanvas.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script> 
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.flot.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.peity.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/fullcalendar.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.dashboard.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.gritter.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.interface.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.chat.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.form_validation.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.wizard.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.uniform.js"></script> 
<script src="${pageContext.request.contextPath}/js/select2.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.popover.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>


    

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/AD/js/jquery-1.7.2.min.js"></script>


<script src="${pageContext.request.contextPath}/AD/js/bootstrap.js"></script>

</body>
</html>