package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.UserBean;
import utils.UserDAO;


/**
 * Login Check Servlet is for redirection to the jsp pages. 
 * @author Yao
 *
 */
public class LoginCheckServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	
	public LoginCheckServlet() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			UserBean user = new UserBean();
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));
			user = UserDAO.login(user);
			if (user.isValid()) {
				HttpSession session = request.getSession(true);
				session.setAttribute("username", user); 
				response.sendRedirect("Home.jsp"); 
			}
			else 
				response.sendRedirect("Error.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
