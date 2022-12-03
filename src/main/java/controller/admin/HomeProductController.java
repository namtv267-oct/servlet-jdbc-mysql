package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModels;
import service.IProductService;

@WebServlet(name = "homeProductController", urlPatterns = { "/admin/home" })

public class HomeProductController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public HomeProductController() {
		super();
	}

	@Inject
	private IProductService productService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		homeProduct(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void homeProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		List<ProductModels> products = new ArrayList<>();
		products = productService.getAll();
		request.setAttribute("products",products);
		request.getRequestDispatcher("/admin/home.jsp").forward(request, response);
	}
}
