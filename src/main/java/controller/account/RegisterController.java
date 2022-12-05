package controller.account;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AccountModels;
import service.IAccountService;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet(name = "register", urlPatterns = { "/account/register" })
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Inject
	private IAccountService accountService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRegister(request, response);
	}

	protected void processRegister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		AccountModels account = new AccountModels();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		Integer role = 0;
		account.setFullname(name);
		account.setPassword(password);
		account.setUsermail(email);
		account.setRole(role);
		account.setPhoneNumber("0123456789");
		accountService.createAccount(account);
		response.sendRedirect("/CRUD/log/register.jsp");
	}
}
