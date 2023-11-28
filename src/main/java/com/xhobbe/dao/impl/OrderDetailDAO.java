
package com.xhobbe.dao.impl;

import com.xhobbe.dao.IOrderDetailDAO;
import com.xhobbe.mapper.OrderDetailMapper;
import com.xhobbe.model.Cart;
import com.xhobbe.model.OrderDetail;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class OrderDetailDAO extends AbstractDAO<OrderDetail> implements IOrderDetailDAO {

    @Override
    public List<OrderDetail> findByOrderId(long id) {
        StringBuilder sql = new StringBuilder("SELECT od.orderId, od.orderDetailId, p.productId, p.name, od.quantity, od.priceOrder, MIN(pi.imageUrl) AS selectedImageUrl ");
        sql.append("FROM `orderDetails` AS od ");
        sql.append("LEFT JOIN `product` AS p ON p.productId = od.productId ");
        sql.append("LEFT JOIN `productImage` AS pi ON p.productId = pi.productId ");
        sql.append("WHERE od.orderId = ? ");
        sql.append("GROUP BY od.orderDetailId, p.productId, p.name, od.quantity, od.priceOrder");

        return query(sql.toString(), new OrderDetailMapper(), id);

    }

    @Override
    public Long add(long orderId, Cart cart) {
        StringBuilder sql = new StringBuilder("INSERT INTO `orderDetails` ");
        sql.append("(orderId, productId, quantity, priceOrder) ");
        sql.append("VALUES (?, ?, ?, ?)");
        
        return insert(sql.toString(), orderId, cart.getProductId(),
                    cart.getQuantity(), cart.getPrice());
    }
    
    @Override
    public void delete(long orderId) {
        String sql = "DELETE FROM `orderDetails` WHERE orderId = ?";
        super.update(sql, orderId);
    }
    
}
