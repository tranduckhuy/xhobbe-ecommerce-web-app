
package com.xhobbe.mapper;

import com.xhobbe.model.OrderDetail;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class OrderDetailMapper implements RowMapper<OrderDetail> {
    
    @Override
    public OrderDetail mapRow(ResultSet rs) {
        try {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setOrderId(rs.getLong("orderId"));
            orderDetail.setOrderDetailId(rs.getLong("orderDetailId"));
            orderDetail.setProductId(rs.getLong("productId"));
            orderDetail.setProductName(rs.getString("name"));
            orderDetail.setQuantity(rs.getInt("quantity"));
            orderDetail.setPriceOrder(rs.getDouble("priceOrder"));
            orderDetail.setImageURL(rs.getString("selectedImageUrl"));
            return orderDetail;
        } catch (SQLException e) {
            return null;
        }
    }
}
