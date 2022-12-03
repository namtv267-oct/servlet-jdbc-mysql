package controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IProductService;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet(name = "editController", urlPatterns = { "/admin/delete-product" })
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IProductService productService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processDelete(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void processDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		Long id = Long.parseLong(request.getParameter("id"));
		productService.deleteProduct(id);
		response.sendRedirect("/CRUD/admin/home");
	}
}
