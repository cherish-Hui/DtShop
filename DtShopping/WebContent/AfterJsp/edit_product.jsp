<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<title>产品列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/static/css/after/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/after/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/after/laydate/laydate.js"></script>
<script src="${pageContext.request.contextPath}/static/js/after/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/after/wangEditor.min.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><img alt="修改商品" src="${pageContext.request.contextPath}/static/img/after/修改.png"> <em>修改商品信息产品</em></span>
   <%--  <span class="modular fr"><a href="${pageContext.request.contextPath}/queryGoodServlet" class="pt-link-btn">商品列表</a></span> --%>
  </div>
  <form action="/DtShopping/updataGoodServlet"  method="post" id="uploadForm">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">商品编号：</td>
    <td><input type="text" readonly="readonly" class="textBox length-long"  name="goodsid"  value="${Good.goodsid}"/></td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">商品名称：</td>
    <td><input type="text" class="textBox length-long"  name="goodsname" value="${Good.goodsname}"/></td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">商品分类：</td>
    <td>
     <input type="text" class="textBox length-long" name="goodstypeid" value="${Good.goodtypeid}"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%">商品价格：</td>
    <td>
     <input type="text" class="textBox length-long" name="goodsprice" value="${Good.goodsprice}"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%">库存：</td>
    <td> 
     <input type="text" class="textBox length-long" name="goodcount" value="${Good.goodcount}"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%">商品销量：</td>
    <td> 
     <input type="text" class="textBox length-long" name="goodsail" value="${Good.goodssail}"/>
    </td>
   </tr>
   
    <tr>
    <td style="text-align:right;width: 15%">商品缩图片：</td>
    <td>
     <img id="gmg" src="${pageContext.request.contextPath}/static/img/mainimg/${Good.goodsimg}" width="60" height="60" class="mlr5"/>
     <input type="file" id="suoluetu"   name="goodmg"/>
     <input id="btn" type="button" value="上传"  />
     <!-- <label for="suoluetu" class="labelBtnAdd">+</label> -->
    
    </td>
   </tr>
   
<!--     <tr>
    <td style="text-align:right;">商品主图：</td>
    <td>
     <input type="file"  multiple="multiple" id="chanpinzhutu" class="hide"/>
     <label for="chanpinzhutu" class="labelBtn2">本地上传(最多选择N张)</label>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td>
     <img src="#" width="80" height="80"/>
     <img src="#" width="80" height="80"/>
     <img src="#" width="80" height="80"/>
     <img src="#" width="80" height="80"/>
     <img src="#" width="80" height="80"/>
    </td>
   </tr> -->
   
   <tr>
    <td style="text-align:right;width:15%;">上架日期：</td>
    <td><input id="pushdate" type="date" class="textBox length-long" name="gooddate" value="${Good.goodsdate}"/></td>
   </tr>
   
   
    <tr>
<!--     <td style="text-align:right;width:15%;">获取内容：</td> -->
    <td><input  id="desc" type="hidden" name="desc" class="textBox length-long" /></td>
   </tr>
   
   <tr>
    <td style="text-align:right;">商品描述：</td>
    <td> 
    <div id="editor" name="editor">
    <p>${Good.goodsinfo}</p>

    </div>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input id="mybtn" type="submit" value="提交" /></td>
   </tr>
  </table>
  </form>
 </div>
 
<!--    <div class="wrap">
 <form action="/picsys/upload.jhtml"  method="post"  id="uploadForm"  >
  <table class="list-style">
    <tr>
    <td style="text-align:right;width: 15%">商品缩图片：</td>
    <td>
     <input type="file" id="suoluetu"   name="goodmg"/>
     <label for="suoluetu" class="labelBtnAdd">+</label>
     <img src="#" width="60" height="60" class="mlr5"/>
    </td>
   </tr>
 </table>
 </form>
 </div> -->
</body>
	<script type="text/javascript">
		!function() {
			laydate({
				elem: '#pushdate'
			})
		}();
	</script>
	 <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#editor')
        // 或者 var editor = new E( document.getElementById('#editor') )
        editor.create()
        
        document.getElementById("editor").addEventListener('focusout', function () {
        // 读取 html
        /* alert(editor.txt.text()); */
        document.getElementById("desc").value=editor.txt.text();
    }, false)

    </script>
    
     <script type="text/javascript">
	$(document).ready(function(){
		$("#btn").click(function(){
			//传入一个非query对象
			var data = new FormData($("#uploadForm")[0]); 
		    $.ajax({
		        type:'POST',
		        url:"/DtShopping/uploadImagesServlet",
		        cache: false,
		        data: data,
		        contentType: false,  
		        processData: false,
		        async: true,
		        success: function(data){
		        	var im=$.parseJSON(data);
		        	$("#gmg").attr("src",im.url);
		        },
		        error: function(){
		            alert("error");
		        }
		    });
		});
	});
</script>
</html>