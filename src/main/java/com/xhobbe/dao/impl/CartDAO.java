package com.xhobbe.dao.impl;

import com.xhobbe.dao.ICartDAO;
import com.xhobbe.mapper.CartMapper;
import com.xhobbe.model.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CartDAO extends AbstractDAO<Cart> implements ICartDAO {

    @Override
    public Long add(Cart cart) {
        StringBuilder sql = new StringBuilder("INSERT INTO `shoppingCart` ");
        sql.append("(userId, productId, quantity) ");
        sql.append("VALUES (?, ?, ?)");

        return super.insert(sql.toString(), cart.getUserId(), cart.getProductId(), cart.getQuantity());
    }

    @Override
    public List<Cart> findAll(int limit, int offset, String orderBy, String sortBy) {
        StringBuilder sql = new StringBuilder("SELECT s.cartId, s.userId, s.productId, p.name, p.price, s.quantity, s.createdAt, MIN(pi.imageUrl) AS selectedImageUrl ");
        sql.append("FROM `shoppingCart` AS s ");
        sql.append("JOIN `user` AS u ON s.userId = u.userId ");
        sql.append("JOIN `product` AS p ON s.productId = p.productId ");
        sql.append("LEFT JOIN `productImage` AS pi ON p.productId = pi.productId ");
        sql.append("GROUP BY s.cartId, s.userId, s.productId, p.name, p.price, s.quantity, s.createdAt ");

        if ("".equals(orderBy) || "".equals(sortBy)) {
        } else {
            sql.append("ORDER BY ").append(orderBy).append(" ").append(sortBy).append(" ");
        }

        sql.append("LIMIT ? OFFSET ? ");

        List<Cart> resutls = super.query(sql.toString(), new CartMapper(), limit, offset);

        return resutls;
    }

    @Override
    public List<Cart> findByUserId(long userId) {
        StringBuilder sql = new StringBuilder("SELECT s.cartId, s.userId, s.productId, p.name, p.price, s.quantity, s.createdAt, MIN(pi.imageUrl) AS selectedImageUrl ");
        sql.append("FROM `shoppingCart` AS s ");
        sql.append("JOIN `user` AS u ON s.userId = u.userId AND u.userId = ? ");
        sql.append("JOIN `product` AS p ON s.productId = p.productId ");
        sql.append("LEFT JOIN `productImage` AS pi ON p.productId = pi.productId ");
        sql.append("GROUP BY s.cartId, s.userId, s.productId, p.name, p.price, s.quantity, s.createdAt ");

        List<Cart> resutls = super.query(sql.toString(), new CartMapper(), userId);

        return resutls;
    }

    @Override
    public void updateQuantity(int quantity, long cartId) {
        String sql = "UPDATE `shoppingCart` SET quantity = ? WHERE cartId = ?";
        super.update(sql, quantity, cartId);
    }

    @Override
    public void delete(long id) {

        String sql = "DELETE FROM `shoppingCart` WHERE cartId = ?";
        super.update(sql, id);
    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM `shoppingCart`";
        return count(sql);
    }

    @Override
    public int getTotalItemByUserId(long id) {
        String sql = "SELECT count(*) FROM `shoppingCart` WHERE userId = ?";
        return count(sql, id);
    }

    @Override
    public Cart findOneByUserIdAndProductId(long userId, long productId) {
        StringBuilder sql = new StringBuilder("SELECT c.cartId, c.quantity FROM `shoppingCart` AS c ");
        sql.append("WHERE c.userId = ? AND c.productId = ? ");


        try ( Connection conn = getConnection();  PreparedStatement ps = conn.prepareStatement(sql.toString())) {

            ps.setLong(1, userId);
            ps.setLong(2, productId);
            try ( ResultSet rs = ps.executeQuery();) {
                if (rs.next()) {
                    Cart cart = new Cart();
                    cart.setCartId(rs.getLong("c.cartId"));
                    cart.setQuantity(rs.getInt("c.quantity"));
                    return cart;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    @Override
    public Cart findOne(long cartId) {
        StringBuilder sql = new StringBuilder("SELECT c.cartId, c.quantity, c.productId, p.price FROM `shoppingCart` AS c ");
        sql.append("JOIN `product` AS p ON c.productId = p.productId ");
        sql.append("WHERE c.cartId = ? ");

        try ( Connection conn = getConnection();  PreparedStatement ps = conn.prepareStatement(sql.toString())) {

            ps.setLong(1, cartId);
            try ( ResultSet rs = ps.executeQuery();) {
                if (rs.next()) {
                    Cart cart = new Cart();
                    cart.setCartId(rs.getLong("c.cartId"));
                    cart.setQuantity(rs.getInt("c.quantity"));
                    cart.setProductId(rs.getInt("c.productId"));
                    cart.setPrice(rs.getInt("p.price"));
                    return cart;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
    
    public static void main(String[] args) {
        CartDAO c = new CartDAO();
        System.out.println(c.findOne(1));
    }
    
}
