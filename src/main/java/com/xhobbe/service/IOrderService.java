package com.xhobbe.service;

import com.xhobbe.model.Order;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IOrderService {

    Order add(Order order);

    void delete(long id);

    String findByEmailOrPhone(String searchValue);
    
    String findByStatusAndUserId(long userId, String status);
    
    String findByStatus(String status);
    
    Order findOne(long id);

    List<String> updateStatus(long orderId, int statusId);
    
    int getTotalItemByDays(int days);
    
    int getTotalItemByUserIdAndStatus(long id, int statusId);
    
    int getTotalItemByStatus(int statusId);
    
    List<Double> getTotalIncomeByMonth(int month);
    
    int getTotalItemCurrentMonth();

}
