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

@WebServlet(name = "editProduct", urlPatterns = { "/admin/edit-product" })
public class EditProductController extends HttpServlet {
	@Inject
	private IProductService productService;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		ProductModels $ = productService.getById(id);
		request.setAttribute("product", $);
		System.out.println(id);
		request.getRequestDispatcher("/admin/edit.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processEdit(request, response);
	}

	protected void processEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		Long id = Long.parseLong(request.getParameter("id"));
		ProductModels product = productService.getById(id);
		System.out.println(product.toString());
		product.setName(request.getParameter("name"));
		product.setDescription(request.getParameter("description") == null ? product.getDescription()
				: request.getParameter("description"));
		product.setPrice(Float.parseFloat(request.getParameter("price")));
		product.setSrc(request.getParameter("src"));
		product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		product.setType(request.getParameter("type"));
		product.setBrand(request.getParameter("brand"));
		productService.editProduct(product);
		response.sendRedirect("/CRUD/admin/home");
	}
}
