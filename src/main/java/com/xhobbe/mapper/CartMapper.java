package com.xhobbe.mapper;

import com.xhobbe.model.Cart;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

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
            cart.setImageURL(rs.getString("selectedImageUrl"));

            // Time
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Timestamp timeCreated = rs.getTimestamp("createdAt");
            cart.setCreatedAt(sdf.format(timeCreated));
            
            return cart;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
