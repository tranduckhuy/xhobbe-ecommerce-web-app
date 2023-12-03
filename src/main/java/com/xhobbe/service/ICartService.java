package com.xhobbe.service;

import com.xhobbe.model.Cart;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface ICartService {

    Long add(Cart cart);

    List<Cart> findAll(int limit, int offset, String orderBy, String sortBy);

    List<Cart> findByUserId(long userId);

    void updateQuantity(int newQuantity, long cartId);

    void delete(long id);

    int getTotalItemByUserId(long id);
}
