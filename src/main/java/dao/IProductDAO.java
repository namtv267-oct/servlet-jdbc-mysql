package dao;

import java.util.List;

import model.ProductModels;

public interface IProductDAO extends ICRUD<ProductModels> {
	List<ProductModels> getAll();
	ProductModels getById(Long id);
	List<ProductModels> getByName(String name);
	void createProducts(ProductModels product);
	void updateProductsById(ProductModels product);
	void deleteProductsById(Long id);
}
