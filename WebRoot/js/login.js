    function login(str){
		var oMask = document.createElement("div");
		oMask.id = "mask";
		//页面高度与宽度
		var sHeight = document.documentElement.scrollHeight;
		var sWidth = document.documentElement.scrollWidth;
		//可视区域高度与宽度
		var cHeight = document.documentElement.clientHeight;
		var cWidth = document.documentElement.clientWidth;

		oMask.style.height = sHeight+"px";
		oMask.style.widht = sWidth+"px";
		document.body.appendChild(oMask);

		var oLogin = document.createElement("div");
		oLogin.id = "login";
		oLogin.style.left = (sWidth - 10)/2 + "px";
		oLogin.style.top = (sHeight - 10)/2 + "px";
		//oLogin.innerHTML = "<div class='loginContent'></div>"

		var timer = null;
		timer = setInterval(function(){
			var hei = oLogin.offsetHeight;//元素高度

			if( hei >= 350){
				clearInterval(timer);
				//加载页面
				oLogin.innerHTML = "<div id='loginContent'><iframe frameborder='0' name='tar' width=100% height=100% src='"+str+".jsp'></iframe><div id='close'></div></div>"
				document.getElementById("loginContent").style.backgroundRepeat = "no-repeat";
				document.getElementById("loginContent").style.backgroundImage ="url(images/"+str+".jpg)";
				var oClose = document.getElementById("close");
				//关闭弹出层
				    oMask.onclick=oClose.onclick=function(){
					document.body.removeChild(oLogin);
					document.body.removeChild(oMask);
				}
			}else{
				oLogin.style.height = oLogin.offsetHeight + 4 +"px";
				oLogin.style.width = oLogin.offsetWidth + 4 +"px";
				oLogin.style.top = oLogin.offsetTop - 2 +"px";
				oLogin.style.left = oLogin.offsetLeft - 2 +"px";
			}
		},8);
		document.body.appendChild(oLogin);

	}