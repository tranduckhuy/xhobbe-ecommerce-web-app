package com.xhobbe.dao;

import com.xhobbe.model.Order;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IOrderDAO {

    Long add(Order order);

    List<Order> findAll(int limit, int offset, String orderBy, String sortBy);
    
    List<Order> findByStatusAndUserId(long userId, String status);
    
    List<Order> findByStatus(String status);
    
    Order findOne(long id);
    
    void updateStatus(long orderId, int statusId);
    
    void delete(long id);

    int getTotalItem();
    
    int getTotalItemByUserId(long id);
    
    int getTotalItemByStatus(int statusId);

}
