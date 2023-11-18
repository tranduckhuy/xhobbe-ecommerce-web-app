package com.xhobbe.dao;

import com.xhobbe.model.Order;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IOrderDAO {

    Long add(Order order);

    List<Order> findAll();
    
    List<Order> findByUserId(long userId);
    
    void delete(long id);

    int getTotalItem();

}
