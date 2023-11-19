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
    
    List<Order> findByStatusIdAndUserId(long userId, int statusId);

    void updateStatus(long orderId, int statusId);
    
    int getTotalItem();

}
