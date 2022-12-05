package controller.web;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.DTO;
import model.ProductModels;
import service.IProductService;

/**
 * Servlet implementation class SearchController
 */
@WebServlet(name = "search", urlPatterns = "/search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IProductService productService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processSearch(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void processSearch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		StringBuilder name = new StringBuilder("%");
		name.append(request.getParameter("q"));
		name.append("%");
		System.out.println(name.toString());
		DTO<ProductModels> product = productService.getByName(name.toString());
		if (product.hasData()) {
			List<ProductModels> products = product.getDatas();
			request.setAttribute("products", products);
			request.getRequestDispatcher("/web/search.jsp").forward(request, response);
		} else {
			request.setAttribute("products", "Have no products !");
			request.getRequestDispatcher("/web/search.jsp").forward(request, response);
		}

	}
}
