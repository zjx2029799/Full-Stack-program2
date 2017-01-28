<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="p" uri="/PowerTag"%> 
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


<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<link href="${pageContext.request.contextPath}/css/jq22.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery.kwicks.min.js"></script>




<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试无忧网</title>
<script type="text/javascript">
	$(function() {
		jdt_lie_w=($("#liangfajdt ul").width()-600)/($("#liangfajdt ul li").length-1);
		jdt_lie_w=Math.ceil(jdt_lie_w);
		jdt_lie_sed=$("#liangfajdt ul").width()-jdt_lie_w*($("#liangfajdt ul li").length-1);
		$("#liangfajdt ul li").css("width",Number(jdt_lie_w)-1);
		//$("#liangfajdt ul li.selected").css("width",jdt_lie_sed);
		$('.kwicks').kwicks({
			minSize : Number(jdt_lie_w)-1,
			spacing : 1,
			behavior: 'slideshow'
		});
	});
</script>
</head>



<body style="width: 1990px; ">



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

<!--main-container-part-->
<div id="content" style="width: 3000px; ">

 <div class="container-fluid">
    
<!--End-Chart-box--> 
    <hr/>
    <div class="row-fluid" style="width: 2000px;height: 1000px; ">
      <div class="span6" >
    
     <h4 style="color:blue">网站简介</h4>    
 <div class="shw1180">
  <div class="cfix md_sl">
    <div class="col_w900 left">
      <div style="width:880px; height:500px; overflow:hidden" id="liangfajdt">
        <ul style="width:880px; height:500px; overflow:hidden" class="kwicks kwicks-horizontal kwicks-processed">
          <li class="kwicks-selected kwicks-collapsed kwicks-expanded" style="left:0px;width:39px;">
            <div style="position:relative">
              <div class="jdt_img"><a data-toggle="tab" href="#tab3"><img src="${pageContext.request.contextPath}/img/a1.png" width="600" height="500"></a></div>
              <div class="white lf_jdttitle"><a href="">资源导航: 通过资源导航查看你想看到的学科资料吧</a></div>
              <div class="lf_jdtbg"></div>
            </div>
          </li>
          <li style="left:40px;width:600px;">
            <div style="position:relative">
              <div class="jdt_img"><a href=""><img src="${pageContext.request.contextPath}/img/a2.png" width="600" height="500"></a></div>
              <div class="white lf_jdttitle"><a href="">资源下载排行榜: 用排行榜的方法方便用户遴选出较好的资料</a> </div>
              <div class="lf_jdtbg"></div>
            </div>
          </li>
          <li style="left:641px;width:39px;" class="kwicks-collapsed">
            <div style="position:relative">
              <div class="jdt_img"><a href=""><img src="${pageContext.request.contextPath}/img/a3.png" width="600" height="500"></a></div>
              <div class="white lf_jdttitle"><a href="">网站公告: 公告处会放置一些网站更新信息和对用户留言的反馈 </a></div>
              <div class="lf_jdtbg"></div>
            </div>
          </li>
          
          <li style="left:641px;width:39px;" class="kwicks-collapsed">
            <div style="position:relative">
              <div class="jdt_img"><a href=""><img src="${pageContext.request.contextPath}/img/a4.png" width="600" height="500"></a></div>
              <div class="white lf_jdttitle"><a href="">网站交流论坛： 专门设计的给网站提供意见和与后台管理员交流的模块</a></div>
              <div class="lf_jdtbg"></div>
            </div>
          </li>

          <li style="left:721px;width:39px;" class="kwicks-collapsed">
            <div style="position:relative">
              <div class="jdt_img"><a href=""><img src="${pageContext.request.contextPath}/img/a5.png" width="600" height="500"></a></div>
              <div class="white lf_jdttitle"><a data-toggle="tab" href="#tab2">关于我们： 这里是关于我们的团队</a></li><!-- <a href="">关于我们</a> --></div>
              <div class="lf_jdtbg"></div>
            </div>
          </li>
          
        </ul>
      </div>
    </div>
  </div>
</div>
         
            <!-- <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">资源导航</a></li>
              <li><a data-toggle="tab" href="#tab2">资源下载排行榜</a></li>
              <li><a data-toggle="tab" href="#tab3">网站公告</a></li>
              <li><a data-toggle="tab" href="#tab4">网站交流论坛</a></li>
              <li><a data-toggle="tab" href="#tab5">关于我们</a></li>
            </ul>
        -->
          <%-- <div class="widget-content tab-content" style="height: 343px; ">
            <div id="tab1" class="tab-pane active">
              <p>通过资源导航查看你想看到的学科资料吧，这里面的分类很细致哦！如果有意见或者我们库里缺少的学科欢迎您的补充~我们尽力做到最好</p>
              <img src="${pageContext.request.contextPath}/img/ziliao.jpg" alt="demo-image"/>
            </div>
              
            <div id="tab2" class="tab-pane"> <img src="${pageContext.request.contextPath}/img/jiaoliu.jpg" alt="demo-image"/>
              <p>为了提供一种有利于学习资源导向的方法，用排行榜的方法陈列资料信息，这样的排列有利于方便用户遴选出较好的资料</p>
            </div>
            
             <div id="tab3" class="tab-pane">
              <p>公告处会放置一些网站更新或者维护的信息，以及对用户留言的反馈 </p>
              <img src="${pageContext.request.contextPath}/img/kaoshi.jpg" alt="demo-image"/>
             </div>
             
             <div id="tab4" class="tab-pane"> <img src="${pageContext.request.contextPath}/img/jiaoliu.jpg" alt="demo-image"/>
              <p>这一模块实际上就是为用户专门设计的给网站提供意见和与后台管理员交流的模块</p>
            </div>
            
            <div id="tab5" class="tab-pane"> <img src="${pageContext.request.contextPath}/img/jiaoliu.jpg" alt="demo-image"/>
              <p>这里是关于我们的团队，网站所用技术等等的陈列，方便用户了解开发信息</p>
            </div>
          </div> --%>
        </div>
            
  </div>
      <div class="span6">
        
   
   
      </div>
    </div>
  </div>


<!--end-main-container-part-->

<!--Footer-part-->



<!--end-Footer-part-->



<script src="${pageContext.request.contextPath}/js/excanvas.min.js"></script> 
<%-- <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>  --%>
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
</html>