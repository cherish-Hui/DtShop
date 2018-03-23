<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<title>产品列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><img alt="产品列表" src="${pageContext.request.contextPath}/static/img/after/liebaio.png"> <em>产品列表</em></span>
    <span class="modular fr"><a href="${pageContext.request.contextPath}/queryGoodTypeServlet" class="pt-link-btn">+添加商品</a></span>
  </div>
  <div class="operate">
   <form action="queryGoodServlet?page=${PageModel.page}&rows=${PageModel.pageSize}" method="post">
    	手机类型：
    <select id="ss" class="inline-select" name="type" style=" width:20% " >
    	<option value="0" selected = "selected">全部</option>
    	<c:forEach items="${product_type}" var="good">
    		<option value="${good.goodtypeid}">${good.goodstypename}</option>
    	</c:forEach>
    </select>
    <input type="submit" value="查询" class="tdBtn"/></a>
   </form>
  </div>
  <table class="list-style Interlaced">
   <tr>
   <th> </th>
    <th>ID</th>
    <th>商品名称</th>
    <th>商品价格</th>
    <th>商品类型</th>
    <th>商品描述</th>
    <th>商品样式</th>
    <th>商品数量</th>
    <th>商品销量</th>
    <th>上架日期</th>
    <th>操作</th>
   </tr>
   
   <c:forEach items="${PageModel.list}" var="good">
   	 <tr>
    <td>
     <span>
     <input type="checkbox" class="middle children-checkbox"/>
     </span>
    </td>
    <td class="center">
    <span>${good.goodsid}</span>
    </td>
    <td class="center">
      <span>${good.goodsname}</span>
    </td>
    <td class="center">
     <span>
     	<em>￥</em>${good.goodsprice}
     </span>
    </td>
    <td class="center">
     <span>${good.goodtypeid}</span>
    </td>
    <td class="td-name">
     <span class="ellipsis td-name block">${good.goodsinfo}</span>
    </td>
    <td class="center">
     <img src="${pageContext.request.contextPath}/static/img/mainimg/${good.goodsimg}"  style="height: 40px;width:40px"/>
    </td>
    <td class="center">
     <span>
      <em>${good.goodcount}</em>
      <i>件</i>
     </span>
    </td>
    <td class="center">
     <span>
      <em>${good.goodssail}</em>
      <i>件</i>
     </span>
    </td>
    <td class="center">
     <span>${good.goodsdate}</span>
    </td>

    <td class="center">
     <%-- <a href="http://www.baidu.com" title="查看" target="_blank"><img src="${pageContext.request.contextPath}/static/img/after/icon_view.gif"/></a> --%>
     <a href="${pageContext.request.contextPath}/queryEchoServlet?goodsid=${good.goodsid}" title="编辑" ><img src="${pageContext.request.contextPath}/static/img/after/icon_edit.gif"/></a>
     <a href="${pageContext.request.contextPath}/deleteGoodServlet?goodsid=${good.goodsid}" title="删除"><img src="${pageContext.request.contextPath}/static/img/after/icon_drop.gif"/></a>
    </td>
   </tr>
   </c:forEach>
  
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="批量删除" class="btnStyle"/>
	   

	   
	  </div>
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a>共${PageModel.totalPage}页</a>
	   <c:set var="page" value="${PageModel.page}"></c:set>
	   <c:set var="lastpage" value="${PageModel.totalPage}"></c:set>
	   <c:choose>
	   		<c:when test="${page==1}">
	   		<a>上一页</a>
	   		</c:when>
	   		<c:otherwise>
	   			<a href="${pageContext.request.contextPath}/queryGoodServlet?page=<c:out value="${page-1}"/>&rows=20"  >上一页</a>
	   		</c:otherwise>
	   </c:choose>
	   
	   <a>第${PageModel.page}页</a>
	   <c:choose>
	   		<c:when test="${page==lastpage}">
	   		 <a>下一页</a>
	   		</c:when>
	   		<c:otherwise>
	   			 <a href="${pageContext.request.contextPath}/queryGoodServlet?page=<c:out value="${page+1}"/>&rows=20">下一页</a>
	   		</c:otherwise>
	   </c:choose>
	   <a>共${PageModel.total}条</a>
	  </div>
  </div>
 </div>
</body>
</html>