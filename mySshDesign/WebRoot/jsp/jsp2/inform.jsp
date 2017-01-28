<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uniform.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/select2.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
<link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='${pageContext.request.contextPath}/http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/normalize.css" media="screen">
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/stylesheet.css" media="screen">
   	 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/github-light.css" media="screen">
    	<script type="text/javascript" src="${pageContext.request.contextPath}/jedate/jedate.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>


<body>


<!--sidebar-menu-->


<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Form elements</a> <a href="#" class="current">Validation</a> </div>
    <h1>查看和修改公告</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>公告信息</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/EnrollServlet" novalidate="novalidate">
              <div class="control-group">
                <label class="control-label">公告编号</label>
                <div class="controls">
                  <input type="text" name="infoid" id="infoid" style="width: 483px; ">
                  
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">公告抬头</label>
                <div class="controls">
                  <input type="text" name="infohead" id="infohead" style="width: 483px; ">
                  
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">公告发布日期</label>
                <div class="controls">
                  <input type="text" name="infodate" id="infodate" placeholder="请选择" style="width: 483px; ">
                 
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">公告内容</label>
                <div class="controls">
                  <input type="text" name="infodate" id="infodate"  style="width: 480px; height: 115px">
                </div>
              </div>
              <div class="form-actions">
              	<span class="pull-middle"><input type="reset" value="撤销" class="btn btn-success"></span>
                <span class="pull-middle"><input type="submit" value="确认" class="btn btn-success"></span>
              </div>
            </form>
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
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.js"></script> 
<script src="${pageContext.request.contextPath}/js/matrix.form_validation.js"></script>


<script type="text/javascript">  
 	
	jeDate({
		dateCell:"#infodate",//isinitVal:true,
		format:"YYYY-MM-DD",
		isTime:false, //isClear:false,
		minDate:"2014-09-19 00:00:00"
	})
	
	
 </script>
</body>

</html>