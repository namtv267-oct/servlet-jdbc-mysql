package dao;

import java.util.List;

import javax.inject.Inject;

import map.Mapper;
import model.ProductModels;

public class ProductDAO extends AbstractDAO<ProductModels> implements IProductDAO {
	@Inject
	private Mapper<ProductModels> rowMap;

	@Override
	public List<ProductModels> getAll() {
		// TODO Auto-generated method stub
		StringBuilder sql = new StringBuilder("SELECT * FROM products ");
		return get(sql.toString(), rowMap, null);
	}

	@Override
	public ProductModels getById(Long id) {
		ProductModels product = new ProductModels();
		StringBuilder sql = new StringBuilder("SELECT * FROM products ");
		sql.append("WHERE id = ?");
		product = get(sql.toString(), rowMap, id.toString()).get(0);
		return product;
	}

	@Override
	public List<ProductModels> getByName(String name) {
		StringBuilder sql = new StringBuilder("SELECT * FROM products WHERE name LIKE ? ");
		return get(sql.toString(), rowMap, name);
	}

	@Override
	public void createProducts(ProductModels product) {
		StringBuilder sql = new StringBuilder("INSERT INTO products ");
		sql.append("(name, description, price, src, type, brand, quantity)");
		sql.append("VALUES (?,?,?,?,?,?,?)");
		query(sql.toString(), product.getName(), product.getDescription(), product.getPrice(), product.getSrc(),
				product.getType(), product.getBrand(), product.getQuantity());
	}

	@Override
	public void updateProductsById(ProductModels product) {
		StringBuilder sql = new StringBuilder("UPDATE products ");
		sql.append("SET name=?, description=?, price=?, src=?, type=?, brand=?, quantity=? WHERE id=?");
		query(sql.toString(), product.getName(), product.getDescription(), product.getPrice(), product.getSrc(),
				product.getType(), product.getBrand(), product.getQuantity(), product.getId());
	}

	@Override
	public void deleteProductsById(Long id) {
		StringBuilder sql = new StringBuilder("DELETE FROM products ");
		sql.append("WHERE id = ?");
		query(sql.toString(), id);

	}

}
