<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>爱手机</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
        .top{position:fixed;width:100%;height:40px;background:#000;top:0px;left:0px;}
        .top a{color:#fff;text-decoration:none;line-height:40px;float:right;margin-right:20px;}
        .top img{float:left;margin-left:30px;}
        .bottom{position:absolute;width:100%;height:90%;float:left;top:40px;left:0px;}
        #mask{opacity:0.75;filter:alpha(opacity=75);top:0;left:0;background:#000;}
		#login{position:fixed;width:10px;height:10px;z-index:10;background:#fff;}
		#loginContent{position:relative;float:left;width:350px;height:350px;background:#fff;padding-top:40px;}
		#close{position:absolute;float:right;right:5px;top:5px;background:url(images/close_link.jpg) no-repeat;cursor:pointer;width:34px;height:32px;}
		#close:hover{background:url(images/close_hover.jpg) no-repeat;}
	</style>
  </head>
  
  <body>
		<div class = "top">
			<a href = "javascript:login('login');">登录</a>
			<a href = "javascript:login('regist');">注册</a>
			<img src="images/phone.png">
		</div>
		<div class = "bottom">
			<img src = "images/phone1.jpg" height="100%" width="100%">
		</div>

		<script src = "js/login.js"></script>
		<!--<script src = "js/jquery-2.1.4.min.js"></script>
		<script src = "js/bootstrap.min.js"></script>-->
	</body>
</html>
