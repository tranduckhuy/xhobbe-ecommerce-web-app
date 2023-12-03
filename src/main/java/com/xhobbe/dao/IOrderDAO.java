package com.xhobbe.dao;

import com.xhobbe.model.Order;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IOrderDAO {

    Long add(Order order);

    List<Order> findByEmailOrPhone(String searchValue);
    
    List<Order> findByStatusAndUserId(long userId, String status);
    
    List<Order> findByStatus(String status);
    
    Order findOne(long id);
    
    void updateStatus(long orderId, int statusId);
    
    void delete(long id);

    int getTotalItemByDays(int days);
    
    int getTotalItemByUserIdAndStatus(long id, int statusId);
    
    int getTotalItemByStatus(int statusId);
    
    double getTotalIncomeByMonth(int month);
    
    int getTotalItemCurrentMonth();

}
