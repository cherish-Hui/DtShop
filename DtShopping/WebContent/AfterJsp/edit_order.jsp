<%@ page language="java" import="model.OrderGoodsAll" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>订单详情</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/layer.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
 button::-moz-focus-inner,
input::-moz-focus-inner {
    border: 2px solid #34538b;
}
button::-moz-focus-outer,
input::-moz-focus-outer {
    border: 2px solid #cad5eb;
}
</style>
</head>
<%
OrderGoodsAll ordergoodall=(OrderGoodsAll)request.getAttribute("ordergoodall");
          
      %>
<body>
<script type="text/javascript">
       function yz(){
    	   layer.alert('发货成功', {
               icon: 1,
               skin: 'layer-ext-moon'
           });  
       }  
           
    	  
       </script>
<form method="post" action="UpDateOrderStateServlet">

 <div class="wrap">
  <div class="page-title">
    
   <tr>
    <td style="width:15%;text-align:right;">订单编号：</td>
    <td><input type="text" style="border:none;"  name="id" class="textBox length-middle" value="${requestScope.ordergoodall.orderid}" readonly="true"/></td>
   </tr>
 
  </div>
  <dl class="orderDetail">
   <dt class="order-h">订单详情</dt>
   <dd>
    <ul>
     <li>
      <span class="h-cont h-right">收件人姓名：</span>
      <span class="h-cont h-left">${requestScope.ordergoodall.reman}</span>
     </li>
     <li>
      <span class="h-cont h-right">联系电话：</span>
      <span class="h-cont h-left">${requestScope.ordergoodall.usertel}</span>
     </li>
     <li>
      <span class="h-cont h-right">联系地址：</span>
      <span class="h-cont h-left">${requestScope.ordergoodall.useraddress}</span>
     </li>
     <li>
      <span class="h-cont h-right">付款状态：</span>
      <span class="h-cont h-left">${requestScope.ordergoodall.paystate}</span>
     </li>
     <li>
      <span class="h-cont h-right">下单时间：</span>
      <span class="h-cont h-left">${requestScope.ordergoodall.ordertime}</span>
     </li>
     <li>
      <span class="h-cont h-right">发货状态：</span>
      <c:if test='${requestScope.ordergoodall.orderstate=="未发货"}'>
      <span class="h-cont h-left">${requestScope.ordergoodall.orderstate}</span>
      <span><input type="submit" value="点击发货" onclick="yz()" /></span>
      
      </c:if>
      <c:if test='${requestScope.ordergoodall.orderstate=="已发货"}'>
      <span class="h-cont h-left">${requestScope.ordergoodall.orderstate}</span>
      </c:if>
     </li>
    </ul>
   </dd>
  
   <dd>
    <table class="list-style">
     <tr>
      <th>缩略图</th>
      <th>产品</th>
      <th>单价</th>
      <th>数量</th>
      <th>小计</th>
     </tr>
     <tr>
      <td class="center"><img src="${pageContext.request.contextPath}/static/img/mainimg/${requestScope.ordergoodall.picture}" class="thumbnail"/></td>
      <td>${requestScope.ordergoodall.commname}</td>
      <td>
       <span>
        <i>￥</i>
        <em>${requestScope.ordergoodall.price}</em>
       </span>
      </td>
      <td>${requestScope.ordergoodall.count}</td>
      <td>
       <span>
        <i>￥</i>
        <em>${requestScope.ordergoodall.ordermoney}</em>
       </span>
      </td>
     </tr>
     <tr>
      <td colspan="5">
       <div class="fr">
        <span style="font-size:15px;font-weight:bold;">
         <i>订单共计金额：￥</i>
         <b>${requestScope.ordergoodall.ordermoney}</b>
        </span>
       </div>
      </td>
     </tr>
    </table>
   </dd>
   
   
  </dl>
  </form>
 </div>
</body>
</html>