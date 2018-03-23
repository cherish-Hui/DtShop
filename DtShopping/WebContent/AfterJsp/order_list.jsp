<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>订单列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><img alt="订单列表" src="${pageContext.request.contextPath}/static/img/after/liebaio.png"><em>订单列表</em></span>
   
  </div>
  <div class="operate">
   <form action="QueryOrderServlet" method="post">
   	<img src="${pageContext.request.contextPath}/static/img/after/icon_search.gif"/>
    <input type="text"  name="id" class="textBox length-long" placeholder="输入订单编号"/>
    <select class="inline-select" name="state">
     <option value="2">请选择</option>
     <option value="0">未付款</option>
     <option value="1">已付款</option>
    </select>
    
    <select class="inline-select" name="orderstate">
     <option value="2">请选择</option>
     <option value="0">未发货</option>
     <option value="1">已发货</option>
    </select>
    <input type="submit" value="查询" class="tdBtn"/></a>
    <input type="button" value="返回" class="tdBtn" onclick="javascript:history.back(-1);"/>
   </form>
  </div>
  <table class="list-style Interlaced">
   <tr>
   <th> </th>
    <th>订单编号</th>
    <th>收件人</th>
    <th>下单时间</th>
    <th>订单数量</th>
    <th>订单金额</th>
    <th>付款状态</th>
    <th>发货状态</th>
    <th>操作</th>
   </tr>
   
   <c:forEach items="${order}" var="i">
   	 <tr>
    <td>
     <span>
     <input type="checkbox" class="middle children-checkbox"/>
     </span>
    </td>
    <td class="center">${i.order_id}</td>
    <td class="center">${i.reman}</td>
    <td class="center"> ${i.commname}</td>
    <td class="center">${i.count}</td>
    <td class="center"><i>￥</i>${i.ordermoney}</td>
    <td class="center">${i.paystatus}</td>
    <td class="center">
     <span>${i.orderstatus}</span>
    </td>
    <td class="center">
     <a href="${pageContext.request.contextPath}/OrderBackServlet?id=${i.order_id}" class="inline-block" title="查看订单"><img src="${pageContext.request.contextPath}/static/img/after/icon_view.gif"/></a>
    </td>
    
   </tr>
   </c:forEach>
  
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   
	   

	   
	  </div>
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a>第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div>
  </div>
 </div>
</body>
</html>