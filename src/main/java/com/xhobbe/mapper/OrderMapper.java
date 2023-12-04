package com.xhobbe.mapper;

import com.xhobbe.model.Order;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 *
 * @author ADMIN
 */
public class OrderMapper implements RowMapper<Order> {

    @Override
    public Order mapRow(ResultSet rs) {
        try {
            Order order = new Order();
            order.setOrderId(rs.getLong("orderId"));
            order.setUserId(rs.getLong("userId"));
            order.setCustomerName(rs.getString("name"));
            order.setCustomerPhone(rs.getString("phoneNumber"));
            order.setCustomerEmail(rs.getString("email"));
            order.setAddress(rs.getString("deliveryAddress"));
            order.setTotal(rs.getDouble("total"));
            order.setStatusID(rs.getInt("orderStatusId"));
            order.setStatus(rs.getString("status"));

            // Time
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Timestamp timeCreated = rs.getTimestamp("orderDate");
            order.setOrderDate(sdf.format(timeCreated));

            return order;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
