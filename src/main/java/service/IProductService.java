package service;

import java.util.List;

import dto.DTO;
import model.ProductModels;

public interface IProductService {
	List<ProductModels> getAll();

	DTO<ProductModels> getByName(String name);

	void createProducts(ProductModels product);

	void editProduct(ProductModels product);

	void deleteProduct(Long id);

	ProductModels getById(Long Id);
}
