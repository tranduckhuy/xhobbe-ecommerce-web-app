
package com.xhobbe.dao;

import com.xhobbe.model.Cart;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface ICartDAO {
    
    Long add(Cart cart);

    List<Cart> findAll(int limit, int offset, String orderBy, String sortBy);
    
    List<Cart> findByUserId(long userId);
    
    Cart findOne(long cartId);
    
    Cart findOneByUserIdAndProductId(long userId, long productId);
    
    void updateQuantity(int quantity, long cartId);
    
    void delete(long id);

    int getTotalItem();
    
    int getTotalItemByUserId(long id);
    
}
