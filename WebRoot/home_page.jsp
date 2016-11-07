<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
        .top{position:fixed;width:100%;height:40px;background:#000;top:0px;left:0px;}
        .top>a{color:#fff;text-decoration:none;line-height:40px;float:right;margin-right:20px;}
        .top span{color:#fff;text-decoration:none;line-height:40px;float:right;margin-right:20px;}
        .top img{float:left;margin-left:30px;line-height:40px;height:40px;}
        .bottom{position:absolute;width:100%;height:95%;float:left;top:40px;left:0px;}
        .center{margin:0 auto;text-align:center;line-height:40px;width:300px;background:#000;}
        .center a{color:#fff;text-decoration:none;line-height:40px;margin-left:30px;}
	</style>
</head>
<body>
     <div class = "top">
			<a href="logout">  注销</a>
			<span>${sessionScope.user.getName()}</span><!--获取用户名-->
			<span>欢迎您</span>
			<img src="images/phone.png">
			<div class = "center">
			    <a href="check.jsp" target="tar">首页</a>
				<a href="message.jsp" target="tar">留言</a>
				<a href="check.jsp?url=1" target="tar">查询</a>
			</div>
		</div>
		<div class = "bottom">
			<iframe name="tar" width="100%" height="100%" frameborder="0" src="check.jsp"></iframe>
		</div>
</body>
</html>