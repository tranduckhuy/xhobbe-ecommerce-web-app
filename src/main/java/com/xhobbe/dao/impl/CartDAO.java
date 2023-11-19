
package com.xhobbe.dao.impl;

import com.xhobbe.dao.ICartDAO;
import com.xhobbe.mapper.CartMapper;
import com.xhobbe.model.Cart;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CartDAO extends AbstractDAO<Cart> implements ICartDAO{

    @Override
    public Long add(Cart cart) {
        StringBuilder sql = new StringBuilder("INSERT INTO `shoppingCart` ");
        sql.append("(userId, productId, quantity) ");
        sql.append("VALUES (?, ?, ?)");

        return super.insert(sql.toString(), cart.getUserId(), cart.getProductId(),cart.getQuantity());
    }

    @Override
    public List<Cart> findAll(int limit, int offset, String orderBy, String sortBy) {
        StringBuilder sql = new StringBuilder("SELECT s.cartId, s.userId, s.productId, p.name, p.price, s.quantity, s.createdAt ");
        sql.append("FROM `shoppingCart` AS s ");
        sql.append("JOIN `user` AS u ON s.userId = u.userId ");
        sql.append("JOIN `product` AS p ON s.productId = p.productId ");
        
        if ("".equals(orderBy)  || "".equals(sortBy)) {
        } else {
            sql.append("ORDER BY ").append(orderBy).append(" ").append(sortBy).append(" ");
        }
        
        sql.append("LIMIT ? OFFSET ? ");

        List<Cart> resutls = super.query(sql.toString(), new CartMapper(), limit, offset);

        return resutls;

    }

    @Override
    public List<Cart> findByUserId(long userId) {
        StringBuilder sql = new StringBuilder("SELECT s.cartId, s.userId, s.productId, p.name, p.price, s.quantity, s.createdAt ");
        sql.append("FROM `shoppingCart` AS s ");
        sql.append("JOIN `user` AS u ON s.userId = u.userId AND u.userId = ? ");
        sql.append("JOIN `product` AS p ON s.productId = p.productId ");

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
    
}
