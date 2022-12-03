package service;

import java.util.List;

import javax.inject.Inject;

import dao.IProductDAO;
import dto.DTO;
import model.ProductModels;

public class ProductService implements IProductService {

	@Inject
	private IProductDAO productDAO;

	@Override
	public List<ProductModels> getAll() {

		return productDAO.getAll();
	}

	@Override
	public DTO<ProductModels> getByName(String name) {
		DTO<ProductModels> result = new DTO<ProductModels>();
		result.setDatas(productDAO.getByName(name));
		if (result.hasData()) {
			result.setStatus(true);
		}else {
			result.setComment("Have no product !");
			result.setStatus(false);
		}
		return result;
	}

	@Override
	public void createProducts(ProductModels product) {
		productDAO.createProducts(product);

	}

	@Override
	public void editProduct(ProductModels product) {
		productDAO.updateProductsById(product);
	}

	public ProductModels getById(Long id) {
		return productDAO.getById(id);
	}

	@Override
	public void deleteProduct(Long id) {
		productDAO.deleteProductsById(id);
	}

}
