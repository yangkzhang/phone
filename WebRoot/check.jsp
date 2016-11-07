<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>留言板</title>
    <style>
        .all{position:absolute;width:100%;height:auto;background:rgb(214,214,214)}
        .content{width:80%;height:auto;margin:0 auto;margin-top:30px;}
        .top{width:100%;height:35px;background:rgb(200,200,200);text-align:center;line-height:35px;display:none;}
        .bottom{width:100%;height:auto;margin-left:60px;}
        .items{width:230px;height:320px;float:left;margin-top:10px;margin-right:10px;text-align:center;border:1px solid #eee;}
        .items:hover{border:1px solid rgb(238,87,61);}
        .img{width:230px;height:240px;float:left;}
        .name{width:230px;height:30px;float:left;margin-top:5px;text-align:center;font-size:20px;}
        .price{width:230px;height:30px;float:left;text-align:center;}
        .price_num{font-size:24px;color:rgb(237,70,47);}
    </style>
</head>
<body>
     <div class="all">
    	<div class="content">
    		<div class="top" id="top_status">
    			<span>请选择类型</span>
    			<span>
    				<select id="type">
    				    <option>全部</option>
    					<option>华为</option>
    					<option>苹果</option>
    					<option>魅族</option>
    				</select>
    			</span>
    			<span><input type="button" value="查询" onclick="send($('#type').val())"/></span>
    		</div>
    		<div class="bottom" id="bot"></div>
    		<div class="items" id="ite" style="display:none;">
    				<img class="img" src=""/>
    				<div class="name"></div>
    				<div class="price">￥  <span class="price_num"></span></div>
    			</div>
    	</div>
    </div>
     <script src="js/jquery.js"></script>
   <script>
     $(document).ready(function(){
    	
	      (function ($) {
	    	    //扩展方法获取url参数
	    	    $.getUrlParam = function (name) {
	    	    	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
	    	    	var r = window.location.search.substr(1).match(reg);
	    	    	if (r != null) return unescape(r[2]); 
	    	    	return null;
	    	    }
	    	})(jQuery);
	    	
	    	var urltype = $.getUrlParam('url');
	    	if(urltype == 1 ){
	    	   $("#top_status").css("display","block");//修改属性，让导航栏显示
	    	}
	     send("全部");
	     }
     );
     
	    function send(typeName){
	       $.ajax({
	           type:'POST',
	           url:'getPhone',
	           data:{type:typeName},
	           dataType:'json',
	           success:function(data){
	               $("#bot").html('');
	               $.each(data.phoneInfo,function(index,item){//将商品一个一个展示出来
	                   var ite = $("#ite").clone(true);
	                   ite.css("display","block");
	                   ite.removeAttr("id");
	                   ite.find(".img").attr("src",item.image);//图片
	                   ite.find(".name").html(item.name);//商品名
	                   ite.find(".price").find(".price_num").html(item.price);//价格
	                   $("#bot").append(ite);//在div后面追加
	               })
	           }
	       });
	    }
    </script>
</body>
</html>