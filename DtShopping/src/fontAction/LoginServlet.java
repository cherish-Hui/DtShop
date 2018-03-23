package fontAction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDaoImpl;
import model.Messager;
import model.User;
import service.UserServiceImpl;
import utils.BeanJsonUtil;

/**
 * @author 孙雷
 *
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("email");
		String password = request.getParameter("password");

		UserServiceImpl uImpl = new UserServiceImpl();
		Object[]obj={username,password};
		User user = null;
		user = uImpl.login(obj);
		Messager messager ;
		if (user!=null) {
			if (user.getState().equals("0")) {
				messager = new Messager("220", "此账户已失效");
			}else{
				 messager =  new Messager("200", "登录成功");
			}
		}else {
			messager = new Messager("250", "账号或密码错误");
		}
		request.getSession().setAttribute("user", user);
		BeanJsonUtil.writeJson(response, messager);
	}
}
