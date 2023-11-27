
package com.xhobbe.dao;

import com.xhobbe.model.Cart;
import com.xhobbe.model.OrderDetail;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IOrderDetailDAO {
    
    List<OrderDetail> findByOrderId(long id);
    
    Long add(long orderId, Cart cart);
    
    void delete(long orderId);
}
