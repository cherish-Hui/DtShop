<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--
	作者：王飞、孙雷
	时间：2017-08-28
	描述：注册首页
-->
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/font/register.css" />
<script
	src="${pageContext.request.contextPath}/static/js/font/jquery-3.2.1.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="${pageContext.request.contextPath}/static/js/font/layer/layer.js"></script>
</head>

<body>
	<div class="bod">
		<div class="center">
			<img
				src="${pageContext.request.contextPath}/static/img/fontlogin/yuan.png" />
			<div class="top-header">

				<h4 class="titlea">注册DT账号</h4>
			</div>

			<div class="pho-stp">
				<h4 class="pho-email">电子邮箱</h4>
				<input  id="email" class="email-login" type="email"
					placeholder="请输入邮箱账号" />
				<h4 class="pho-email1">验证码</h4>
				<input class="pho-yan" id="validate" type="text"
					placeholder="请输入验证码，不区分大小写" /> <span class="span"> <img
					 id="validate" src="/DtShopping/ValidateServlet"
					onclick="fresh(this)">
				</span>

			</div>

			<input id="pho-button" type="button" class="pho-button" value="立即注册"
				onclick="func()" /> <span class="regis-as">注册帐号即表示您同意并愿意遵守DT用户协议</span>
			<span class="regis-as1">和隐私政策</span>

		</div>
	</div>
	<div class="bootom-header">
		<span class="font-font">制作团队:DREAM TEAM (DT)</span>
	</div>
</body>
<script type="text/javascript">
	function fresh(obj){
		obj.src="/DtShopping/ValidateServlet?id="+Math.random();
		} 
	</script>

<script type="text/javascript">
 $("#email").blur(function(){
	$.ajax({
		url : "/DtShopping/EmailServlet",
		type : "post",
		dataType : "text",
		async : false,
		data : {email:$("#email").val(),
		},
		success : function(result) {
			var message = $.parseJSON(result);
			 if(message.code==250){
				layer.tips(message.msg, '#email');
			 }else{
				layer.tips(message.msg, '#email');
			 }
		},
			error : function(data) {
				alert("连接失败")
			}	
	});
});	 
function func(){
	$.ajax({
		url : "/DtShopping/RegisterServlet",
		type : "post",
		dataType : "text",
		async : false,
		data : {email:$("#email").val(),
			validate:$("#validate").val()
		},
		success : function(result) {
		var message = $.parseJSON(result);
		if(message.code==200){
			layer.alert(message.msg, {
	            icon: 1,
	            skin: 'layer-ext-moon' 
	        });
		}else{
			layer.alert(message.msg, {
	            icon: 2,
	            skin: 'layer-ext-moon' 
	        });
		}
	},
		error : function(data) {
			alert("连接失败");
		}
	});
};

	
		
</script>
</html>