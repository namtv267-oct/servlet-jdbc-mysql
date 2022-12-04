package controller.account;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.DTO;
import model.AccountModels;
import service.IAccountService;

@WebServlet(name = "Login", urlPatterns = { "/account/login" })
public class LoginController extends HttpServlet {
	@Inject
	private IAccountService accountService;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processLogin(request, response);
	}

	protected void processLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		AccountModels ac = new AccountModels();
		ac.setUsermail(email);
		ac.setPassword(password);
		DTO<AccountModels> dto = new DTO<AccountModels>();
		dto = accountService.isExisted(ac);
		
		if (dto.isStatus()) {
			if (dto.getData().getRole() == 1) {
				System.out.println("1");
				
				request.setAttribute("user",dto.getData());
				response.sendRedirect("/CRUD/admin/home");
			} else {
				System.out.println("2");
				request.setAttribute("user",dto.getData());
				response.sendRedirect("/CRUD/home");
			}
		} else {
			System.out.println("3");
			response.sendRedirect("/CRUD/log/login.jsp");
		}
	}
}
