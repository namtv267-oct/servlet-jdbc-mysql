package controller.web;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModels;
import service.IProductService;

/**
 * Servlet implementation class HomeWebController
 */
@WebServlet(name = "homeController", urlPatterns = { "/home" })
public class HomeWebController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IProductService productService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeWebController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processHome(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void processHome(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		List<ProductModels> products = productService.getAll();
		request.setAttribute("products", products);
		request.getRequestDispatcher("/web/home.jsp").forward(request, response);
	}

}
