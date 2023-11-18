
package com.xhobbe.mapper;

import com.xhobbe.model.Product;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class ProductMapper implements RowMapper<Product>{

    @Override
    public Product mapRow(ResultSet rs) {
        try {
            Product product = new Product();
            product.setProductId(rs.getInt("productId"));
            product.setName(rs.getString("name"));
            product.setDescription(rs.getString("description"));
            product.setBrand(rs.getString("brandName"));
            product.setPrice(rs.getDouble("price"));
            product.setCategory(rs.getString("categoryName"));
            product.setStockQuantity(rs.getInt("stockQuantity"));
            return product;
        } catch (SQLException e) {
            return null;
        }
    }
    
}
