package controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModels;
import service.IProductService;

@WebServlet(name = "createProductControllerOfAdmin", urlPatterns = { "/admin/create-product" })

public class CreateProductController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public CreateProductController() {
		super();
	}

	@Inject
	private IProductService productService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processCreateProduct(request, response);
	}

	protected void processCreateProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		float price = Float.parseFloat(request.getParameter("price"));
		String src = request.getParameter("src");
		String type = " ";
		String brand = " ";
		Integer quantity = Integer.parseInt(request.getParameter("quantity"));
		ProductModels product = new ProductModels(name, description, price, src, type, brand, quantity);
		productService.createProducts(product);
		request.getRequestDispatcher("/admin/create-product.jsp").forward(request, response);
	}
}
