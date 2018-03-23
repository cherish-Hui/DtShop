package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Manager;
import service.UpdataManagerService;

@WebServlet("/updataMyInfoServlet")
public class UpdataMyInfoServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String managerid=request.getParameter("managerid");
		String realname=request.getParameter("realname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		HttpSession session=request.getSession();
		String photo=String.valueOf(session.getAttribute("imgurl"));
		Manager manager=new Manager();
		manager.setManagerid(managerid);
		manager.setRealname(realname);
		manager.setUsername(username);
		manager.setEmail(email);
		manager.setPhoto(photo);
		int i=0;
		UpdataManagerService UpdataManagerService=new UpdataManagerService();
		try {
			i=UpdataManagerService.updataMyInfoService(manager);
			System.out.println("影响"+i);
			request.setAttribute("Manager", manager);
			
			request.getRequestDispatcher("queryManagerServlet").forward(request, response);

			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
