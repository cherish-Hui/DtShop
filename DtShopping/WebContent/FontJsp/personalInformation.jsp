<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<!--
		作者：xpl
		时间：2017-08-30
		描述：个人中心页面
	-->
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
	</head>
<body>
	<%@ include file="Header.jsp" %>
	
		<div id="bbig">
			<%@ include file="grleftlan.jsp" %>
			<% User user1=(User)request.getAttribute("user"); %>
			<div id="gr-rightlan" style="margin-left: 15px;">
				<div id="gr-touxianglan">
					<div id="touxiang">
						<img src="/DtShopping/static/img/after/<%=user1.getPicture() %>" alt="头像" class="img-circle" height="165px">
					</div>
					<div id="gr-namelan">
						<p style="font-size: 28px;font-family: 'blackadder itc';"><%=user1.getUsername() %></p>
						<p style="color: darkgray; font-size: 16px;margin-top: 20px;">DT商城欢迎你</p>
						<a href="/DtShopping/FontJsp/grchange.jsp"><p style="color: red; font-size: 14px;margin-top: 17px;">修改个人信息></p></a>
					</div>
				</div>
				<div id="gr-ziliaolan">
					<ul>
						<li>
							<div class="dindantou">
								<img src="/DtShopping/static/img/mainimg/fahuo.png" alt="11" class="img-circle" height="130px">
							</div>
							<div class="dindan-zi">
							<% int num1=(int)request.getAttribute("nopaynum");
							   int num2=(int)request.getAttribute("nosendnum");
							   int num3=(int)request.getAttribute("waitget");
							%>
								<p style="color: darkgray; font-size: 18px;margin-top: 30px;">待支付订单：<%=num1%></p>
								<a href="#">
									<p style="color: red; font-size: 14px;margin-top: 17px;">查看待支付订单></p>
								</a>
							</div>
						</li>
						<li>
							<div class="dindantou">
								<img src="/DtShopping/static/img/mainimg/f1.png" alt="11" class="img-circle" height="130px">
							</div>
							<div class="dindan-zi">
								<p style="color: darkgray; font-size: 18px;margin-top: 30px;">待发货订单：<%=num2%></p>
								<a href="#">
									<p style="color: red; font-size: 14px;margin-top: 17px;">查看待发货订单></p>
								</a>
							</div>
						</li>
						<li>
							<div class="dindantou">
								<img src="/DtShopping/static/img/mainimg/f3.png" alt="11" class="img-circle" height="130px">
							</div>
							<div class="dindan-zi">
								<p style="color: darkgray; font-size: 18px;margin-top: 30px;">待收货订单：<%=num3%></p>
								<a href="#">
									<p style="color: red; font-size: 14px;margin-top: 17px;">查看待收货订单></p>
								</a>
							</div>
						</li>
						<li>
							<div class="dindantou">
								<img src="/DtShopping/static/img/mainimg/f2.png" alt="11" class="img-circle" height="130px">
							</div>
							<div class="dindan-zi">
								<p style="color: darkgray; font-size: 18px;margin-top: 30px;">待评价订单：0</p>
								<a href="#">
									<p style="color: red; font-size: 14px;margin-top: 17px;">查看待评价订单></p>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
	