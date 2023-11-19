
package com.xhobbe.mapper;

import com.xhobbe.model.Cart;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class CartMapper implements RowMapper<Cart> {
    
    @Override
    public Cart mapRow(ResultSet rs) {
        try {
            Cart cart = new Cart();
            cart.setCartId(rs.getLong("cartId"));
            cart.setUserId(rs.getLong("userId"));
            cart.setProductId(rs.getLong("productId"));
            cart.setProductName(rs.getString("name"));
            cart.setPrice(rs.getDouble("price"));
            cart.setQuantity(rs.getInt("quantity"));
            cart.setCreatedAt(rs.getTimestamp("createdAt"));
            return cart;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
