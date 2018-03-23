package fontAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CarCar;
import model.User;
import service.PhoService;

@WebServlet("/CarcarcaServlet")
public class CarcarcaServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PhoService phoService = new PhoService();
		HttpSession session = request.getSession(false);
		User user=(User)session.getAttribute("user");
		String idname=phoService.getString(user.getUser_id());
		request.setAttribute("mon", idname);
		
		CarCar car[]= phoService.getCarCar(user.getUser_id());
		request.setAttribute("car", car);
		
		request.getSession().setAttribute("car", car);
		request.getRequestDispatcher("FontJsp/Order.jsp").forward(request, response);	
	}
}
