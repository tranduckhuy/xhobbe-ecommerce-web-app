
package com.xhobbe.service;

import com.xhobbe.model.OrderDetail;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IOrderDetailService {
    
    List<OrderDetail> findByOrderId(long id);
    
    Long add(long[] cartId, long orderId);
    
    void delete(long orderId);
}
