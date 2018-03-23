package afteraction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Manager;
import service.UpdataManagerService;

@WebServlet("/addManagerServlet")
public class AddManagerServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realname=request.getParameter("realname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String boonday=request.getParameter("boonday");
		String permission=request.getParameter("pp");
		String password="123456";
		String photo="wangnima.jpg";
		String status="1";
		
		Manager manager=new Manager();
		manager.setRealname(realname);
		manager.setUsername(username);
		manager.setEmail(email);
		manager.setBoonday(boonday);
		manager.setPermission(permission);
		manager.setPassword(password);
		manager.setPhoto(photo);
		manager.setState(status);
		
		int i=0;
		UpdataManagerService updataManagerService=new UpdataManagerService();
		try {
			i=updataManagerService.addManager(manager);
			request.setAttribute("", "");
			/*request.getRequestDispatcher("AfterJsp/manager_list.jsp").forward(request, response);*/
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}
