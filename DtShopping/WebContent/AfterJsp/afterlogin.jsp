<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/after/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/after/afterlogin.css"/>
</head>

<body>
<div class="box">
		<div class="login-box">
			<div class="login-title text-center">
				<h1><small>DT商城后台管理</small></h1>
			</div>
			<div class="login-content ">
			<div class="form">
			<form action="/DtShopping/ManagerLoginServlet" method="post">
				<div class="form-group">
					<div class="col-xs-12  ">
						<div class="input-group">
							<span class="input-group-addon"><span>
							<img src="${pageContext.request.contextPath}/static/img/after/user.png ">
							</span>
							</span>
							<input type="text" id="username" name="username" class="form-control" placeholder="用户名">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12  ">
						<div class="input-group">
							<span class="input-group-addon">
							<span>
							<img src="${pageContext.request.contextPath}/static/img/after/pwd.png ">
							</span>
							</span>
							<input type="password" id="password" name="password" class="form-control" placeholder="密码">
						</div>
					</div>
				</div>
				<div>
					<div class="col-xs-4 col-xs-offset-4 ">
						<button type="submit" class="btn"> 登录</button>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-6 link">
						<p><small>忘记密码？</small> <a href="javascript:void(0)" ><small>找回</small></a>
						</p>
					</div>
				</div>
			</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>