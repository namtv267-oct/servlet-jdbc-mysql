package map;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ProductModels;

public class ProductMapper implements Mapper<ProductModels>{

	@Override
	public ProductModels mapRow(ResultSet resultSet) {
		ProductModels product = new ProductModels();
		try {
			product.setId(resultSet.getLong("id"));
			product.setName(resultSet.getString("name"));
			product.setDescription(resultSet.getNString("description"));
			product.setPrice(resultSet.getFloat("price"));
			product.setSrc(resultSet.getString("src"));
			product.setType(resultSet.getString("type"));
			product.setBrand(resultSet.getString("brand"));
			product.setQuantity(resultSet.getInt("quantity"));
			return product;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	

}
