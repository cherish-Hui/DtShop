<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="/DtShopping/static/css/font/bootstrap1.css" />
		<link rel="stylesheet" href="/DtShopping/static/css/font/searchno.css" />
		<script type="text/javascript" src="/DtShopping/static/js/font/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/bootstrap.min.js" ></script>
		<script type="text/javascript" src="/DtShopping/static/js/font/main.js" ></script>
	</head>
<body>
	<%@ include file="Header.jsp" %>
		<div id="middle">
		<%String zhi=(String)request.getAttribute("zhi"); %>
			<div style="padding-left: 65px;"><a href="/DtShopping/MainServlet">首页&nbsp;</a>><a href="/DtShopping/searchServlet?mohuzhi=<%=zhi%>">&nbsp;全部结果&nbsp;</a>>&nbsp;<%=zhi%></div>
			<div id="shouhang">
				<h3>抱歉，没有搜索到与“<span><%=zhi%></span>”相关的商品</h3>
				<div style="color: white; background-color: gray;width: 200px;">请检查您的输入是否有误</div>
				如有任何意见或建议，期待您<span>反馈给我们</span>
				<br /><br />
				您还可以尝试以下搜索：<a>荣耀Magic</a>&nbsp;|&nbsp;<a>坚果银魂</a>&nbsp;|&nbsp;<a>努比亚Z17</a>&nbsp;|&nbsp;<a>三星海盗版</a>&nbsp;|&nbsp;<a>oppoR11巴萨</a>&nbsp;|&nbsp;<a>锤子M1L</a>&nbsp;|&nbsp;<a>vivoX9sPlus</a>&nbsp;|&nbsp;<a>戴尔外星人</a>
			</div>	
		</div>
	    <!--热门栏-->
		<div id="photolan1">
			<div id="bao">
				热门<span style="color: red;">推荐</span>
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
	<%@ include file="Footer.jsp" %>
</body>
</html>