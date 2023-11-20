
package com.xhobbe.mapper;

import com.xhobbe.model.Order;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class OrderMapper implements RowMapper<Order>{
    @Override
    public Order mapRow(ResultSet rs) {
        try {
            Order order = new Order();
            order.setOrderId(rs.getLong("orderId"));
            order.setUserId(rs.getLong("userId"));
            order.setCustomerName(rs.getString("name"));
            order.setCustomerPhone(rs.getString("phoneNumber"));
            order.setAddress(rs.getString("deliveryAddress"));
            order.setTotal(rs.getDouble("total"));
            order.setStatusID(rs.getInt("orderStatusId"));
            order.setStatus(rs.getString("status"));
            order.setOrderDate(rs.getTimestamp("orderDate"));
            
            return order;
        } catch (SQLException e) {
            return null;
        }
    }
}
