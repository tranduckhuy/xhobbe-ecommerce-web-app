package com.xhobbe.service.impl;

import com.xhobbe.dao.ICartDAO;
import com.xhobbe.model.Cart;
import com.xhobbe.service.ICartService;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author ADMIN
 */
public class CartService implements ICartService {

    @Inject
    ICartDAO cartDAO;

    @Override
    public Long add(Cart cart) {
        return cartDAO.add(cart);
    }

    @Override
    public List<Cart> findAll(int limit, int offset, String orderBy, String sortBy) {
        return cartDAO.findAll(limit, offset, orderBy, sortBy);
    }

    @Override
    public List<Cart> findByUserId(long userId) {
        return cartDAO.findByUserId(userId);
    }

    @Override
    public void updateQuantity(int quantity, long cartId) {
        cartDAO.updateQuantity(quantity, cartId);
    }

    @Override
    public void delete(long id) {
        cartDAO.delete(id);
    }

    @Override
    public int getTotalItem() {
        return cartDAO.getTotalItem();
    }

}
