<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
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
	<body>
		<%@ include file="Header.jsp" %>
		<div id="bbig">
			<%@ include file="grleftlan.jsp" %>
			<div id="gr-rightlan" style="margin-left: 15px;">
				<div id="gr-touxianglan">
					<div id="touxiang">
						<img src="/DtShopping/static/img/after/<%=user.getPicture() %>" alt="头像" class="img-circle" height="165px">
					</div>
					<div id="gr-namelan">
					<%
					user=(User)session.getAttribute("user");
				%>
						<p style="font-size: 28px;font-family: 'blackadder itc';"><%=user.getUsername()%></p>
						<p style="color: darkgray; font-size: 16px;margin-top: 20px;">DT商城欢迎你</p>
				
					</div>
				</div>
				<div id="gr-message">
					<ul>
						<input id="id" type="hidden" value=<%=user.getUser_id()%>>
						<li>昵称：<input id="username" type="text" value=<%=user.getUsername()%>></li>
						<li>生日：<input id="birthday" type="text" value=<%=user.getBirthday()%>></li>
						<li>姓名：<input id="realname" type="text" value=<%=user.getRealname()%>></li>
						<li>邮箱：<input id="email" type="text" value=<%=user.getEmail() %>></li>
						<li>手机：<input id="phone" type="text" value=<%=user.getTelphone()%>></li>
						<li>性别：
					<%
						if(user.getSex().equals("1")){
					%>
						<input name="a" class="aaa" type="radio" value="1" checked="checked" />男
						<input  name="a" class="aaa" type="radio" value="0"/>女	
					<%
						}else{
					%>
						<input name="a" class="aaa" type="radio" value="1"  />男
						<input  name="a" class="aaa" type="radio" value="0" checked="checked"/>女
					<% 
					}
					%>
						</li>
						<li> </li>
						<li style="font-size: 15px;padding-left: 103px;">
							<input type="button" id="cbtn" value="确认修改"/>
						</li>
					</ul>
					<script type="text/jscript">
						$("#cbtn").on("click",function(){
							var id=$("#id").val();
							var birthday=$("#birthday").val();
							var username=$("#username").val();
							var email=$("#email").val();
							var realname=$("#realname").val();
							var phone=$("#phone").val();
							var sex=$("input[name='a']:checked").val();
							$.ajax({
								  type: 'POST',
								  url:"/DtShopping/GrchangeServlet",
								  data: {id:id,birthday:birthday,username:username,email:email,realname:realname,phone:phone,sex:sex},
								  success:function(result){
										var messager = $.parseJSON(result);
										if (messager.code == 250) {
											$.messager.show({					
												title : 'Error',
												msg : result.mess
											});
										} else {
											
											layer.alert('修改成功，请重新登录', {
									            icon: 1,
									            skin: 'layer-ext-moon' 
									        });
											
											window.setTimeout("window.location.href='grziliao.jsp';",2000);
										}
								  } 
						   });
						})
					</script>
				</div>
			</div>
		</div>
	</body>
</html>

