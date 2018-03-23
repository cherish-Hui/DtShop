package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ping;
import model.User;
import service.PhoService;

@WebServlet("/SelAlnnnServlet")
public class SelAlnnnServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PhoService phoService = new PhoService();
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		String goods=request.getParameter("name");	
		
		Ping[] ping= phoService.getPings1(user.getUser_id(),goods);
	
		request.setAttribute("car", ping);
		
		
		request.getRequestDispatcher("FontJsp/pingjia.jsp").forward(request, response);
	}
}
