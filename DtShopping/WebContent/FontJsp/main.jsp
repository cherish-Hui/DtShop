<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--
@author:xpl
time:2017-08-28
  -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="/DtShopping/static/css/font/bootstrap1.css" />
		<link rel="stylesheet" href="/DtShopping/static/css/font/maincss.css" />
		<script type="text/javascript" src="/DtShopping/static/js/font/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/bootstrap.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/main.js" ></script>
	</head>
	<body>	
		<%@ include file="Header.jsp" %>
		<div id="big">
 			<div id="myCarousel" class="carousel slide" data-ride="carousel">	
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>
				<div class="carousel-inner" role="listbox" style="height: 460px;">
					<div class="item active">
						<img class="first-slide" src="/DtShopping/static/img/mainimg/444.jpg" alt="First slide" style="height: 460px;">
					</div>
					<div class="item">
						<img class="second-slide" src="/DtShopping/static/img/mainimg/555.jpg" alt="Second slide" style="height: 460px;">
					</div>
					<div class="item">
						<img class="third-slide" src="/DtShopping/static/img/mainimg/666.jpg" alt="Third slide" style="height: 460px;">
					</div>
					<div class="item">
						<img class="fourth" src="/DtShopping/static/img/mainimg/777.jpg" alt="fourth slide" style="height: 460px;">
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" id="prev">
					<img src="/DtShopping/static/img/mainimg/j1.jpg" id="jianA" style="height: 50px;width: 50px"/>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" id="next">
					<img src="/DtShopping/static/img/mainimg/j2.jpg" id="jianB"/>
					<span class="sr-only">Next</span>
				</a>
			</div>
 		</div>	
 		<div id="left-menu">
 			<table style="width: 243px;margin-top: 28px;">
  				<tr id="a">
  					<td>品质手机</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="b">
  					<td>笔记本</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="c">
  					<td>平板</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="d">
  					<td>路由器</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="e">
  					<td>移动电源</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="f">
  					<td>智能硬件</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="g">
  					<td>摄影摄像</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="h">
  					<td>娱乐影音</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="i">
  					<td>手机配件</td>
  					<td>&nbsp;></td>
  				</tr>
  				<tr id="j">
  					<td>智能数码</td>
  					<td>&nbsp;></td>
  				</tr>
  			</table>
 		</div>
 		<div id="first" hidden="hidden">
 		<%
		List list=(List)request.getAttribute("goodsdata");
 		List list5=(List)request.getAttribute("mac");
		List list6=(List)request.getAttribute("pad");
		List list7=(List)request.getAttribute("router");
		List list8=(List)request.getAttribute("portable");
		List list9=(List)request.getAttribute("hardware");
		List list10=(List)request.getAttribute("camera");
		List list11=(List)request.getAttribute("entertainment");
		List list12=(List)request.getAttribute("accessory");
		List list13=(List)request.getAttribute("digital");
		%>
 			<ul id="first-ul">
 				<%
					for(int i=0;i<12;i++){
						HashMap map1=(HashMap)list.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map1.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map1.get("goods_id")%>"><span><%=map1.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
 		</div>
 		<div id="second" hidden="hidden">
 			<ul id="first-ul">
 				<%
					for(int i=0;i<10;i++){
						HashMap map2=(HashMap)list5.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map2.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map2.get("goods_id")%>"><span><%=map2.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
 		</div>
 		<div id="third" hidden="hidden">
 			<ul id="first-ul">
 				<%
					for(int i=0;i<6;i++){
						HashMap map3=(HashMap)list6.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map3.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map3.get("goods_id")%>"><span><%=map3.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
 		</div>
 		<div id="fourth" hidden="hidden">
 			<ul id="first-ul">
 				<%
					for(int i=0;i<2;i++){
						HashMap map4=(HashMap)list7.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map4.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map4.get("goods_id")%>"><span><%=map4.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
 		</div>
		<div id="fifth" hidden="hidden">
			<ul id="first-ul">
 				<%
					for(int i=0;i<2;i++){
						HashMap map5=(HashMap)list8.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map5.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map5.get("goods_id")%>"><span><%=map5.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
		</div>
		<div id="sixth" hidden="hidden">
			<ul id="first-ul">
 				<%
					for(int i=0;i<2;i++){
						HashMap map6=(HashMap)list9.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map6.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map6.get("goods_id")%>"><span><%=map6.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
		</div>
		<div id="seventh" hidden="hidden">
			<ul id="first-ul">
 				<%
					for(int i=0;i<2;i++){
						HashMap map7=(HashMap)list10.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map7.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map7.get("goods_id")%>"><span><%=map7.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
		</div>
		<div id="eighth" hidden="hidden">
			<ul id="first-ul">
 				<%
					for(int i=0;i<2;i++){
						HashMap map8=(HashMap)list11.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map8.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map8.get("goods_id")%>"><span><%=map8.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
		</div>
		<div id="ninth" hidden="hidden">
			<ul id="first-ul">
 				<%
					for(int i=0;i<2;i++){
						HashMap map9=(HashMap)list12.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map9.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map9.get("goods_id")%>"><span><%=map9.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
		</div>	
		<div id="tenth" hidden="hidden">
			<ul id="first-ul">
 				<%
					for(int i=0;i<2;i++){
						HashMap map10=(HashMap)list13.get(i);
				%>
 					<li>
 						<img src="/DtShopping/static/img/mainimg/<%=map10.get("goodsimg")%>"/>
 						<a href="${pageContext.request.contextPath}/PhoListServlet?id=<%=map10.get("goods_id")%>"><span><%=map10.get("goodsname") %></span></a>
 					</li>
 				<%
			 		};
				%>
 			</ul>
		</div>		
		<!--热门栏-->
		<div id="photolan">
			<div id="bao">
				热门<span style="color: red;">HOT</span>
				<button type="button" id="phbtn1"
					class="btn btn-default" 
					aria-label="Left Align"> 
					<img src="/DtShopping/static/img/mainimg/j3.jpg" style="height:12px" />
				</button>
				<button type="button" id="phbtn2"
					class="btn btn-default" 
					aria-label="Left Align"> 
					<img src="/DtShopping/static/img/mainimg/j4.jpg" style="height:12px" />	
				</button>			
			</div>
			<div id="hot">
			<%
				List list1=(List)request.getAttribute("hotgoods");
			%>
    			<div class="mobanlian" id="qq" >
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(0)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(0)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(0)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
   				<div id="ww" class="mobanlian" >
       				<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(1)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(1)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(1)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="ee" class="mobanlian">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(2)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(2)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(2)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div  id="rr" class="mobanlian">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(3)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(3)).get("goodsname")%>
               				<p><%=((HashMap)list1.get(3)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
				<div id="tt" class="mobanlian">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(4)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(4)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(4)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="yy" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(5)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(5)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(5)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="uu" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(6)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(6)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(6)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="ii" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(7)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(7)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(7)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="oo" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(8)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(8)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(8)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
    			<div id="pp" class="mobanlian" hidden="hidden">
        			<div class="thumbnail">
         				<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list1.get(9)).get("goodsimg")%>" alt="通用的占位符缩略图"/>
            			<div class="caption">
               				<%=((HashMap)list1.get(9)).get("goodsname")%><br/>
               				<p><%=((HashMap)list1.get(9)).get("goodsprice")%>元</p>
            			</div>
        			</div>
    			</div>
			</div>	
		</div>
		<!-- 新品区 -->
		<div id="newlan">
			<div style="height: 60px; font-size: x-large;padding-left: 78px;padding-top: 15px;" ><span style="color: lawngreen;">新品</span>专区</div>
		<div id="newgoods">
			<div id="new1">
				<img src="/DtShopping/static/img/mainimg/huawei_p10.jpg" height="500px" width="260px"/>
			</div>
			<div id="new2">
				<img src="/DtShopping/static/img/mainimg/huawei newpin.jpg" height="250px" width="655px"/>
				<img src="/DtShopping/static/img/mainimg/hnew.jpg" height="250px" width="288px" style="margin-left:3px;"/>
				<img src="/DtShopping/static/img/mainimg/hua newp.jpg" height="245px" width="231px" style="margin-top: 5px;"/>
				<img src="/DtShopping/static/img/mainimg/huanew.jpg" height="245px" width="232px" style="margin-top: 5px;margin-left: 3px;"/>
				<img src="/DtShopping/static/img/mainimg/huanewqin.jpg" height="245px" width="232px" style="margin-top: 5px;margin-left: 3px;"/>
				<img src="/DtShopping/static/img/mainimg/mi newpin.jpg" height="245px" width="234px" style="margin-top: 5px;margin-left: 3px;"/>
			</div>
		</div>		
		</div>
	<!--商品展示区-->
		<div id="goods">
			<!--华为展示区-->
			<div class="honour">
				<p id="huaweishouji">华为专区</p>
				<ul>
				<%
				List list2=(List)request.getAttribute("huaweigoods");
				%>
					<li id="001">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(0)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(0)).get("goodsname")%>
						<p><%=((HashMap)list2.get(0)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin001" hidden="hidden"><%=((HashMap)list2.get(0)).get("goodsinfo")%></div>
					</li>
					<li id="002">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(1)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(1)).get("goodsname")%>
						<p><%=((HashMap)list2.get(1)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin002" hidden="hidden"><%=((HashMap)list2.get(1)).get("goodsinfo")%></div>
					</li>
					<li id="003">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(2)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(2)).get("goodsname")%>
						<p><%=((HashMap)list2.get(2)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin003" hidden="hidden"><%=((HashMap)list2.get(2)).get("goodsinfo")%></div>
					</li>
					<li id="004">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(3)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(3)).get("goodsname")%>
						<p><%=((HashMap)list2.get(3)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin004" hidden="hidden"><%=((HashMap)list2.get(3)).get("goodsinfo")%></div>
					</li>
					<li id="005">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(4)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(4)).get("goodsname")%>
						<p><%=((HashMap)list2.get(4)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin005" hidden="hidden"><%=((HashMap)list2.get(4)).get("goodsinfo")%></div>
					</li>
					<li id="006">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(5)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(5)).get("goodsname")%>
						<p><%=((HashMap)list2.get(5)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin006" hidden="hidden"><%=((HashMap)list2.get(5)).get("goodsinfo")%></div>
					</li>
					<li id="007">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(6)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(6)).get("goodsname")%>
						<p><%=((HashMap)list2.get(6)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin007" hidden="hidden"><%=((HashMap)list2.get(6)).get("goodsinfo")%></div>
					</li>
					<li id="008">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(7)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(7)).get("goodsname")%>
						<p><%=((HashMap)list2.get(7)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin008" hidden="hidden"><%=((HashMap)list2.get(7)).get("goodsinfo")%></div>
					</li>
					<li id="009">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(8)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(8)).get("goodsname")%>
						<p><%=((HashMap)list2.get(8)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin009" hidden="hidden"><%=((HashMap)list2.get(8)).get("goodsinfo")%></div>
					</li>
					<li id="010">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list2.get(9)).get("goodsimg")%>" />
						<%=((HashMap)list2.get(9)).get("goodsname")%>
						<p><%=((HashMap)list2.get(9)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin010" hidden="hidden"><%=((HashMap)list2.get(9)).get("goodsinfo")%></div>
					</li>
				</ul>
			</div>
			<!--小米展示区-->
			<div class="honour">
				<%
				List list3=(List)request.getAttribute("xiaomigoods");
				%>
				<p id="huaweishouji">小米专区</p>
				<ul>
					<li id="011">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(0)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(0)).get("goodsname")%>
						<p><%=((HashMap)list3.get(0)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin011" hidden="hidden"><%=((HashMap)list3.get(0)).get("goodsinfo")%></div>
					</li>
					<li id="012">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(1)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(1)).get("goodsname")%>
						<p><%=((HashMap)list3.get(1)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin012" hidden="hidden"><%=((HashMap)list3.get(1)).get("goodsinfo")%></div>
					</li>
					<li id="013">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(2)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(2)).get("goodsname")%>
						<p><%=((HashMap)list3.get(2)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin013" hidden="hidden"><%=((HashMap)list3.get(2)).get("goodsinfo")%></div>
					</li>
					<li id="014">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(3)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(3)).get("goodsname")%>
						<p><%=((HashMap)list3.get(3)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin014" hidden="hidden"><%=((HashMap)list3.get(3)).get("goodsinfo")%></div>
					</li>
					<li id="015">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(4)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(4)).get("goodsname")%>
						<p><%=((HashMap)list3.get(4)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin015" hidden="hidden"><%=((HashMap)list3.get(4)).get("goodsinfo")%></div>
					</li>
					<li id="016">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(5)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(5)).get("goodsname")%>
						<p><%=((HashMap)list3.get(5)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin016" hidden="hidden"><%=((HashMap)list3.get(5)).get("goodsinfo")%></div>
					</li>
					<li id="017">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(6)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(6)).get("goodsname")%>
						<p><%=((HashMap)list3.get(6)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin017" hidden="hidden"><%=((HashMap)list3.get(6)).get("goodsinfo")%></div>
					</li>
					<li id="018">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(7)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(7)).get("goodsname")%>
						<p><%=((HashMap)list3.get(7)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin018" hidden="hidden"><%=((HashMap)list3.get(7)).get("goodsinfo")%></div>
					</li>
					<li id="019">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(8)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(8)).get("goodsname")%>
						<p><%=((HashMap)list3.get(8)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin019" hidden="hidden"><%=((HashMap)list3.get(8)).get("goodsinfo")%></div>
					</li>
					<li id="020">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list3.get(9)).get("goodsimg")%>" />
						<%=((HashMap)list3.get(9)).get("goodsname")%>
						<p><%=((HashMap)list3.get(9)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin020" hidden="hidden"><%=((HashMap)list3.get(9)).get("goodsinfo")%></div>
					</li>
				</ul>
			</div>
			<!--苹果展示区-->
			<div class="honour">
			<%
				List list4=(List)request.getAttribute("iphonegoods");
			%>
				<p id="huaweishouji">苹果专区</p>
				<ul>
					<li id="021">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(0)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(0)).get("goodsname")%>
						<p><%=((HashMap)list4.get(0)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin021" hidden="hidden"><%=((HashMap)list4.get(0)).get("goodsinfo")%></div>
					</li>
					<li id="022">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(1)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(1)).get("goodsname")%>
						<p><%=((HashMap)list4.get(1)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin022" hidden="hidden"><%=((HashMap)list4.get(1)).get("goodsinfo")%></div>
					</li>
					<li id="023">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(2)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(2)).get("goodsname")%>
						<p><%=((HashMap)list4.get(2)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin023" hidden="hidden"><%=((HashMap)list4.get(2)).get("goodsinfo")%></div>
					</li>
					<li id="024">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(3)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(3)).get("goodsname")%>
						<p><%=((HashMap)list4.get(3)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin024" hidden="hidden"><%=((HashMap)list4.get(3)).get("goodsinfo")%></div>
					</li>
					<li id="025">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(4)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(4)).get("goodsname")%>
						<p><%=((HashMap)list4.get(4)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin025" hidden="hidden"><%=((HashMap)list4.get(4)).get("goodsinfo")%></div>
					</li>
					<li id="026">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(5)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(5)).get("goodsname")%>
						<p><%=((HashMap)list4.get(5)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin026" hidden="hidden"><%=((HashMap)list4.get(5)).get("goodsinfo")%></div>
					</li>
					<li id="027">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(6)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(6)).get("goodsname")%>
						<p><%=((HashMap)list4.get(6)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin027" hidden="hidden"><%=((HashMap)list4.get(6)).get("goodsinfo")%></div>
					</li>
					<li id="028">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(7)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(7)).get("goodsname")%>
						<p><%=((HashMap)list4.get(7)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin028" hidden="hidden"><%=((HashMap)list4.get(7)).get("goodsinfo")%></div>
					</li>
					<li id="029">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(8)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(8)).get("goodsname")%>
						<p><%=((HashMap)list4.get(8)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin029" hidden="hidden"><%=((HashMap)list4.get(8)).get("goodsinfo")%></div>
					</li>
					<li id="030">
						<img src="/DtShopping/static/img/mainimg/<%=((HashMap)list4.get(9)).get("goodsimg")%>" />
						<%=((HashMap)list4.get(9)).get("goodsname")%>
						<p><%=((HashMap)list4.get(9)).get("goodsprice")%>元</p>
						<div class="honour-pin" id="pin030" hidden="hidden"><%=((HashMap)list4.get(9)).get("goodsinfo")%></div>
					</li>
				</ul>
			</div>
		</div>
		<%@ include file="Footer.jsp" %>
	</body>
</html>
