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

    List<Order> findAll(int limit, int offset, String orderBy, String sortBy);
    
    String findByStatusAndUserId(long userId, String status);
    
    String findByStatus(String status);
    
    Order findOne(long id);

    void updateStatus(long orderId, int statusId);
    
    int getTotalItem();
    
    int getTotalItemByStatus(int statusId);

}
