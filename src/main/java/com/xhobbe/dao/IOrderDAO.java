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
    
    List<Order> findByUserId(long userId);
    
    void updateStatus(long orderId, int orderStatusId);
    
    void delete(long id);

    int getTotalItem();

}
