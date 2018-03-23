package afteraction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.QueryGoodService;

@WebServlet("/queryRecoverGoodServlet")
public class QueryRecoverGoodServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodstype=request.getParameter("type");
		Object []params={goodstype};
		List list=null;
		List list1=null;
		QueryGoodService QueryGoodService=new QueryGoodService();
		try {
			list=QueryGoodService.queryRecoverGood(params);
			list1=QueryGoodService.quseyGoodType();
			request.setAttribute("product",list);
			request.setAttribute("product_type", list1);
			request.getRequestDispatcher("AfterJsp/good_recover_list.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("失败");
		}
	}
}
