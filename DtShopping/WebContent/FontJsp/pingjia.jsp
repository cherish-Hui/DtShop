<%@page import="model.Ping"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="/DtShopping/static/css/font/bootstrap1.css" />
		<link rel="stylesheet" href="/DtShopping/static/css/font/maincss.css" />
		<link rel="stylesheet" href="/DtShopping/static/css/font/geren.css" />
		<script type="text/javascript" src="/DtShopping/static/js/font/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/bootstrap.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/main.js" ></script>
		<script src="${pageContext.request.contextPath}/static/js/font/layer/layer.js"></script>
	</head>
	<style type="text/css">
			.hjsh {
				margin-top: 0px;
				margin-left: 0px;
				width: 100%;
				height: 50px;
				padding: 20px;
				
			}
			
			.hjsh a {
				color: black;
			}
			
			.hjsh a:hover {
				color: orange;
			}
			
			.tiao {
				margin-top: 20px;
				margin-left: 30px;
				width: 910px;
				height: 40px;
				background-color: #F5F5F5;
			}
			.tiaoca img{
				width: 70px;
				margin-top: 25px;
				margin-left: 80px;
				border: 1px solid #A9A9A9;
			}
		</style>
<body>
<%
		Ping car[] = (Ping[])request.getAttribute("car");

	%>
	<%@ include file="Header.jsp" %>
		<div id="bbig">
			<%@ include file="grleftlan.jsp" %>
			<div id="gr-rightlan" style="margin-left: 15px;padding: 0px;">
				<div class="hjsh">
					<span style="margin-right: 20px;"><a href="">待评价订单</a></span>
				</div>
				<div class="tiao" style="padding-top: 11px; font-size: 12px; color: #808080;">

					<span style="margin-left:220px;margin-right: 220px;">订单详情</span>

					
					<span style="margin-left: 80px;">金额</span>
					
				</div>

				<%
				for (int i = 0; i < car.length; i++) {
					Ping cc = car[0];
			%>
				<div class="tiaoc" style="margin-top: 40px;margin-left: 30px;width: 910px;height: 40px;background-color: #F5F5F5;padding-top: 11px; font-size: 12px; color: #808080;float: left;margin-bottom: 100px;">
				
					<div class="tiaoca" style="height: 120px;width:100%; border-bottom: solid 1px #D5D5D5;border-right: solid 1px #D5D5D5;border-left: solid 1px #D5D5D5; margin-top: 10px;">
						<div style="float: left;width: 200px;height: 100%;float: left;"><img src="/DtShopping/static/img/mainimg/<%=cc.getGoodsimg()%>"/></div>
	                   <div style="width: 150px;height: 100%; float: left; text-align: center;" ><p style="margin-top: 50px;"><%=cc.getGoodsname()%></p></div>
						<div style="width: 100px;height: 100%; float: left;text-align: center;" ><p style="margin-top: 50px;">x<%=cc.getGoodscount()%></p></div>
						
						<div style="width: 170px;height: 100%; float: left;text-align: right;" ><p style="margin-top: 50px;margin-left: 40px;">支付金额：￥<%=cc.getDingnum()%></p></div>
						
					</div>
				</div>
			
			<div  style="margin-left: 15px;">
				<div id="ni" style="width: 910px;margin-top: 200px;margin-left: 15px;height: 350px;">		
				</div>
				<input class="aqwe" type="button" value="提交" style="margin-left: 850px; width: 50px;" alt=<%=cc.getGoodid()%> />
			</div>
				<%
				}
				;
			%>
			</div>
		</div>
	<script type="text/javascript" src="/DtShopping/static/js/after/wangEditor.min.js" ></script>
	</body>
	<script type="text/javascript">
		var E = window.wangEditor
		var editor2 = new E('#ni')
		editor2.create()
	</script>
	<script type="text/javascript">
	$(".aqwe").mousedown(function(){
	$.ajax({
			url : "/DtShopping/PingJiaServlet",
			type : "post",
			dataType : "text",

			data : {
				name:$(this).attr("alt"),
					con:editor2.txt.text()
			},
			success : function(result) {
			var message = $.parseJSON(result);
			layer.msg(message.msg);
			},
			error : function(data) {
				layer.msg("一不小心，短路了");
			}
		}); 
	});
	</script>

</html>