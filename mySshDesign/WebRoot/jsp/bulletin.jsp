<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="/PowerTag"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>公告</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uniform.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/select2.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
<link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html"></a></h1>
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
<div id="content">
  <div id="content-header">
    <h1>${com.typename}</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
     
        <div class="widget-box">
          
            <h4>查看公告</h4>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped with-check">
			
			<thead>
				<tr>
					<th style="width: 100px; ">公告标题</th>	
					<th>发布日期</th>
					<th>公告内容</th>
					<th style="width: 80px; ">公告发布者</th>			
				</tr>
			</thead>
								<tbody>
									<c:forEach items="${blist}" var="b">
										<tr>
											<td>${b.btitle }</td>							
											<td>${b.bdate }</td>
											<td>${b.bbody}</td>	
											<td>${b.buser}</td>			
											<td class="action-td"><p:doPower value="用户:修改">
													<a
														href="${pageContext.request.contextPath }/com/DownLoadServlet?cid=${com.cid}"
														class="btn btn-small btn-warning"> <i class="icon-ok">
															下载</i>
													</a>
												</p:doPower> <p:doPower value="用户:删除">
													<a
														href="${pageContext.request.contextPath }/com/DelComServlet?cid=${com.cid }"
														class="btn btn-small"> <i class="icon-remove">删除</i>
													</a>
												</p:doPower></td>
										</tr>
									</c:forEach>
								</tbody>
						</table>
						<ul class="pager">
							<c:if test=""></c:if>
						  <li class="previous <c:if test="${page==1}">disabled</c:if>" ><a href="<c:if test="${page!=1}">${pageContext.request.contextPath }/bul/showBuls?count=${page-1}</c:if>#">&larr; 上一页</a></li>
						  <li class="next <c:if test="${page==total}">disabled</c:if>"><a href="<c:if test="${page!=total}">${pageContext.request.contextPath }/bul/showBuls?count=${page+1}</c:if>#">下一页 &rarr;</a></li>
						</ul>
          </div>
        </div>
 
      </div>
    </div>
  </div>
</div>
<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a> </div>
</div>
<!--end-Footer-part-->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script> 
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.uniform.js"></script> 
<script src="${pageContext.request.contextPath}/js/select2.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.tables.js"></script>
</body>
</html>
