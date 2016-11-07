<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>留言板</title>
    <style>
        body{position:absolute;width:100%;height:100%;background:rgb(214,214,214)}
        .all{position:relative;margin:0 auto;margin-top:30px;width:700px;height:auto;text-align:center;}
        .mtop{position:relative;width:700px;heght:120px;float:left;;background:rgb(214,214,214);}
        .name{color:#f22;font-weight:bold;font-size:22px;}
        .mes{font-size:20px;}
        .head{height:50px;width:50px;float:left;}
        .items{width:700px;text-align:left;height:60px;background:#fff;margin-top:5px;}
        #bottom{position:relative;width:700px;height:auto;background:rgb(214,214,214);margin-top:10px;float:left;}
    </style>
</head>
<body>
    <div class = "all">
        <div class="mtop">
            <textArea name="text" cols="85" rows="5" placeholder="请输入留言...."></textArea>
            <input type="button" value="留言" onclick="send()"/>
        </div>
        <div id ="bottom"></div>
        <div id="ite" class="items">
            <span class="head"><img class="img" src=""></span>
	       	<span class="name"></span>
	       	<span class="mes"></span>
	  </div>
    </div>
    <script src="js/jquery.js"></script>
<script>
    $(document).ready(send());
    function send(){   //用ajax局部刷新
    	$.ajax({
    		type:'POST',
    		url:'getList',
    		data:{message:$('[name=text]').val()},
    		dataType:'json',
    		success:function(data){    //成功返回，列举出来
    			$('[name=text]').val('');//清空留言输入框
    			$("#bottom").html("");
    			$.each(data.messageList,function(index,item){//将留言一条一条地展示出来
    			   var ite = $("#ite").clone(true);
    			   ite.removeAttr("id");
    			   ite.find(".head").find(".img").attr("src","images/head.png");//用户头像
    			   ite.find(".name").text(item.username+":");//用户名
    			   ite.find(".mes").text(item.message);//留言内容
    			   $("#bottom").append(ite);
    			})
    		}
    	});
    }
    </script>
</body>
</html>