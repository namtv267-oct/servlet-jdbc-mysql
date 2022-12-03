package controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModels;
import service.IProductService;

/**
 * Servlet implementation class DetailController
 */
@WebServlet(name = "detail", urlPatterns = "/detail")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IProductService productService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DetailController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processShowDetail(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void processShowDetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		ProductModels product = productService.getById(id);
		request.setAttribute("product", product);
		request.getRequestDispatcher("/web/detail.jsp").forward(request, response);
	}

}
