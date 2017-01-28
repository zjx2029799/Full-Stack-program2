<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
<link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.gritter.css" />
<link href='${pageContext.request.contextPath}/http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>按学科分类下载资源</title>
</head>
<body>
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">学习资源库</a></h1>
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

<!--main-container-part-->
<div id="content">


<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=高等数学"> <i class="icon-dashboard"></i> <span class="label label-important">20</span>高等数学</a> </li>
        <li class="bg_lg span3"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=项目管理"> <i class="icon-signal"></i> 项目管理</a> </li>
        <li class="bg_ly"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=计算机组成原理"> <i class="icon-inbox"></i><span class="label label-success">101</span> 计算机组成原理 </a> </li>
     
      
        <li class="bg_lo"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=数据结构"> <i class="icon-th"></i> 数据结构</a> </li>
        <li class="bg_ls"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=计算机网络"> <i class="icon-fullscreen"></i> 计算机网络</a> </li>
       
        <li class="bg_lo span3"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=软件工程"> <i class="icon-th-list"></i>软件工程</a> </li>

        <li class="bg_ls"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=java语言"> <i class="icon-tint"></i>java语言 </a> </li>
       
        <li class="bg_lb"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=C语言"> <i class="icon-pencil"></i>C语言</a> </li>
        <li class="bg_lg"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=数据库"> <i class="icon-calendar"></i>数据库 </a> </li>
         
        <li class="bg_lr"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=vb.net"> <i class="icon-info-sign"></i>vb.net</a> </li>
		
		 <li class="bg_ls"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=其他新增科目"> <i class="icon-th-list"></i>其他新增科目</a> </li>
     	<li class="bg_lg"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=数字逻辑"> <i class="icon-info-sign"></i>数字逻辑</a> </li>
     <li class="bg_ly"> <a href="${pageContext.request.contextPath}/com/showFiles1?typename=图形学"> <i class="icon-fullscreen"></i>图形学</a> </li>
      </ul>
    </div>
 
    <hr/>
    
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
</body>
</body>
</html>