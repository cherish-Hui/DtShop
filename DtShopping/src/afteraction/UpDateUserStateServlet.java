package afteraction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.QueryUpdateService;


/**
 * 
 * @author dwb
 *
 */
@WebServlet("/UpDateUserStateServlet")
public class UpDateUserStateServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String state=request.getParameter("state");
		String id=request.getParameter("id");
		Object []obj={state,id};
		QueryUpdateService udus=new QueryUpdateService();
		int i=udus.updateuserstate(obj);
		System.out.println(i);
		try {
			response.sendRedirect("/DtShopping/QueryUserServlet");
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}	
	}

}
