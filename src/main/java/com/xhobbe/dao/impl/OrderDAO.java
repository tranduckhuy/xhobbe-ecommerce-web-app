package com.xhobbe.dao.impl;

import com.xhobbe.constant.AppConstant;
import com.xhobbe.dao.IOrderDAO;
import com.xhobbe.mapper.OrderMapper;
import com.xhobbe.mapper.RowMapper;
import com.xhobbe.model.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class OrderDAO extends AbstractDAO<Order> implements IOrderDAO {

    @Override
    public Long add(Order order) {
        StringBuilder sql = new StringBuilder("INSERT INTO `order` ");
        sql.append("(userId, deliveryAddress, total) ");
        sql.append("VALUES (?, ?, ?)");

        long id = super.insert(sql.toString(), order.getUserId(), order.getAddress(),order.getTotal());

        return id;
    }

    // query for Product to get additional imageURL
    private List<Order> queryOrder(String sql, RowMapper<Order> rowMapper, Object... parameters) {
        List<Order> results = new ArrayList<>();

        try ( Connection conn = super.getConnection();  PreparedStatement ps = conn.prepareStatement(sql)) {
            super.setParameter(ps, parameters);

            try ( ResultSet rs = ps.executeQuery();) {
                while (rs.next()) {
                    Order order = rowMapper.mapRow(rs);
                    results.add(order);
                }
            }
            return results;
        } catch (SQLException e) {
            e.printStackTrace();
            return Collections.EMPTY_LIST;
        }
    }

    @Override
    public void updateStatus(long orderId, int orderStatusId) {
        String sql = "UPDATE `order` SET orderStatusId = ? WHERE orderId = ?";

        update(sql, orderStatusId, orderId);
    }

    @Override
    public List<Order> findByEmailOrPhone(String searchValue) {

        StringBuilder sql = new StringBuilder("SELECT o.orderId, u.userId, u.name, u.phoneNumber, u.email, o.deliveryAddress, o.total, o.orderStatusId, s.status, o.orderDate ");
        sql.append("FROM `order` AS o ");
        sql.append("JOIN `user` AS u ON o.userId = u.userId AND (u.email = ? OR u.phoneNumber = ?)");
        sql.append("JOIN `orderStatusCheck` AS s ON o.orderStatusId = s.orderStatusId");

        List<Order> resutls = this.queryOrder(sql.toString(), new OrderMapper(), searchValue, searchValue);

        return resutls;
    }

    @Override
    public List<Order> findByStatusAndUserId(long userId, String status) {
        StringBuilder sql = new StringBuilder("SELECT o.orderId, u.userId, u.name, u.phoneNumber, u.email, o.deliveryAddress, o.total, o.orderStatusId, s.status, o.orderDate ");
        sql.append("FROM `order` AS o ");
        sql.append("JOIN `user` AS u ON o.userId = u.userId AND u.userId = ? ");
        sql.append("JOIN `orderStatusCheck` AS s ON o.orderStatusId = s.orderStatusId ");

        List<Order> resutls;

        if (AppConstant.ALL.equals(status)) {
            resutls = this.queryOrder(sql.toString(), new OrderMapper(), userId);
        } else {
            sql.append("AND s.status = ?");
            resutls = this.queryOrder(sql.toString(), new OrderMapper(), userId, status);
        }
        return resutls;
    }

    @Override
    public List<Order> findByStatus(String status) {
        StringBuilder sql = new StringBuilder("SELECT o.orderId, u.userId, u.name, u.phoneNumber, u.email, o.deliveryAddress, o.total, o.orderStatusId, s.status, o.orderDate ");
        sql.append("FROM `order` AS o ");
        sql.append("JOIN `user` AS u ON o.userId = u.userId ");
        sql.append("JOIN `orderStatusCheck` AS s ON o.orderStatusId = s.orderStatusId ");

        List<Order> resutls;
        if (AppConstant.ALL.equals(status)) {
            resutls = this.queryOrder(sql.toString(), new OrderMapper());
        } else {
            sql.append("AND s.status = ?");
            resutls = this.queryOrder(sql.toString(), new OrderMapper(), status);
        }
        return resutls;
    }

    @Override
    public Order findOne(long id) {
        StringBuilder sql = new StringBuilder("SELECT o.orderId, u.userId, u.name, u.phoneNumber, u.email, o.deliveryAddress, o.total, o.orderStatusId, s.status, o.orderDate ");
        sql.append("FROM `order` AS o ");
        sql.append("JOIN `user` AS u ON o.userId = u.userId ");
        sql.append("JOIN `orderStatusCheck` AS s ON o.orderStatusId = s.orderStatusId ");
        sql.append("WHERE o.orderId = ?");

        List<Order> order = this.queryOrder(sql.toString(), new OrderMapper(), id);
        return order != null ? order.get(0) : null;
    }

    @Override
    public void delete(long id) {

        String sql = "DELETE FROM `order` WHERE orderId = ?";
        super.update(sql, id);
    }

    @Override
    public int getTotalItemByUserIdAndStatus(long id, int statusId) {
        StringBuilder sql = new StringBuilder("SELECT count(*) FROM `order` WHERE userId = ? ");

        // statusId = 0 - status: all
        if (0 == statusId) {
            return count(sql.toString(), id);
        } else if (AppConstant.PENDING_SHIPPED_STATUS_ID == statusId) {
            sql.append("AND (orderStatusId = 1 or orderStatusId = 2) ");
            return count(sql.toString(), id);
        } else {
            sql.append("AND orderStatusId = ?");
            return count(sql.toString(), id, statusId);
        }
    }

    @Override
    public int getTotalItemByDays(int days) {
        String sql = "SELECT count(*) FROM `order` WHERE `orderDate` >= CURDATE() - INTERVAL ? DAY AND orderStatusId = 3 ";
        return count(sql, days);
    }
    
    @Override
    public int getTotalItemCurrentMonth() {
        StringBuilder sql = new StringBuilder("SELECT COUNT(*) FROM `order` WHERE MONTH(orderDate) = MONTH(CURRENT_DATE()) ");
        sql.append("AND YEAR(orderDate) = YEAR(CURRENT_DATE()) AND orderStatusId = 3 ");
        return count(sql.toString());
    }

    @Override
    public int getTotalItemByStatus(int statusId) {
        String sql = "SELECT count(*) FROM `order` WHERE orderStatusId = ? ";
        return count(sql, statusId);
    }

    @Override
    public double getTotalIncomeByMonth(int month) {
        StringBuilder sql = new StringBuilder("SELECT ROUND(SUM(`total`), 2) FROM `order` WHERE orderStatusId = 3 ");
        
        // month = -1 - get all order
        if (month == -1) {
            return countDouble(sql.toString());
        }
        
        sql.append("AND YEAR(orderDate) = YEAR(CURRENT_DATE()) ");
        
        if (month != 0) {
            sql.append("AND MONTH(orderDate) = ").append(month);
        }
        
        return countDouble(sql.toString());
    }
    
    
    private double countDouble(String sql, Object... parameters) {
        double total = 0;
        
        try ( Connection conn = getConnection();  PreparedStatement ps = conn.prepareStatement(sql)) {

            setParameter(ps, parameters);

            try ( ResultSet rs = ps.executeQuery();) {
                if (rs.next()) {
                    total = rs.getDouble(1);
                }
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }
    
    
    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        System.out.println(o.findOne(1));
    }
    
}
