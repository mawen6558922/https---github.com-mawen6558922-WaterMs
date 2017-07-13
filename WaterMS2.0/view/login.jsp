<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link href="http://localhost:8080/WaterMS2.0/view/front/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="http://localhost:8080/WaterMS2.0/view/front/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="http://localhost:8080/WaterMS2.0/view/front/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="http://localhost:8080/WaterMS2.0/view/front/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />

  </head>
  <body>
 <!--  <input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header"></div> -->
<div class="loginWraper">
  <div id="loginform" class="loginBox">
    <form action = "LoginAction" id="index" class="form form-horizontal"  method="post">
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
        <div class="formControls col-xs-8">
          <input id="" name="name" type="text" placeholder="账户" class="input-text size-L">
        </div>
      </div>
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
        <div class="formControls col-xs-8">
          <input id="" name="password" type="password" placeholder="密码" class="input-text size-L">
        </div>
      </div>
     
     
       <br><br>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input name="" type="submit" class="btn btn-success radius size-L"  value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;">
          <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
        </div>
      </div>
     
    </form>
  </div>
</div>
<div class="footer">Copyright 西安科技大学  by H-ui.admin v3.0</div>
<script type="text/javascript" src="http://localhost:8080/WaterMS2.0/view/front/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="http://localhost:8080/WaterMS2.0/view/front/static/h-ui/js/H-ui.min.js"></script>
  </body>
</html>
