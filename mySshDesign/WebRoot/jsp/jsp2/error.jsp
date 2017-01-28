<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="${pageContext.request.contextPath}/AD/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/AD/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/AD/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/AD/css/matrix-media.css" />
<link href="${pageContext.request.contextPath}/AD/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='${pageContext.request.contextPath}/AD/http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

<title>Insert title here</title>
</head>
<body>


  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5></h5>
          </div>
          <div class="widget-content">
            <div class="error_ex">
             	<h1>Error</h1>
              <h3>${message}</h3>
              <p>请返回主页面</p>
              <a class="btn btn-warning btn-big"  href="${pageContext.request.contextPath}/jsp/index.jsp">返回</a> </div>
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
<script src="${pageContext.request.contextPath}/AD/js/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath}/AD/js/jquery.ui.custom.js"></script> 
<script src="${pageContext.request.contextPath}/AD/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/AD/js/maruti.html"></script>
</body>
</body>
</html>