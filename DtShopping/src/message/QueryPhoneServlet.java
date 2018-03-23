package message;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Messager;
import model.User;
import service.UserServiceImpl;
import utils.BeanJsonUtil;
/**
 * 检验手机号码
 * @author 李帅威
 *
 */

@WebServlet("/QueryPhoneServlet")
public class QueryPhoneServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String pho = request.getParameter("pho");
	UserServiceImpl uImpl = new UserServiceImpl();
	Object[] obj = { pho };
	User user = null;
	user = uImpl.phoquery(obj);
	Messager m = null;
	if (user!=null) {
		m = new Messager("200", "验证正确");

	} else {
		m = new Messager("250", "手机号码未注册");
	}
	BeanJsonUtil.writeJson(response, m);
	}
}
