package com.xhobbe.service.impl;

import com.xhobbe.dao.ICartDAO;
import com.xhobbe.dao.IProductDAO;
import com.xhobbe.model.Cart;
import com.xhobbe.model.Product;
import com.xhobbe.service.ICartService;
import java.util.List;
import java.util.stream.Collectors;
import javax.inject.Inject;

/**
 *
 * @author ADMIN
 */
public class CartService implements ICartService {

    @Inject
    ICartDAO cartDAO;

    @Inject
    IProductDAO productDAO;

    @Override
    public Long add(Cart cart) {

        Cart cartCheck = cartDAO.findOneByUserIdAndProductId(cart.getUserId(), cart.getProductId());
        if (cartCheck != null) {
            cartDAO.updateQuantity(cartCheck.getQuantity() + cart.getQuantity(), cartCheck.getCartId());
            return cartCheck.getCartId();
        } else {
            Long id = cartDAO.add(cart);
            return id;
        }
    }

    @Override
    public List<Cart> findAll(int limit, int offset, String orderBy, String sortBy) {
        return cartDAO.findAll(limit, offset, orderBy, sortBy);
    }

    @Override
    public List<Cart> findByUserId(long userId) {

        List<Cart> listCart = cartDAO.findByUserId(userId);

        for (Cart cart : listCart) {

            Product product = productDAO.findOne(cart.getProductId());

            if (product.getStockQuantity() > 0 && cart.getQuantity() > product.getStockQuantity()) {
                cart.setQuantity(1);
                cartDAO.updateQuantity(cart.getQuantity(), cart.getCartId());
            } else if (product.getStockQuantity() == 0) {
                listCart = listCart.stream().filter(c -> !c.equals(cart)).collect(Collectors.toList());
            }
        }

        listCart.forEach(cart -> cart.setTotal(cart.getPrice() * cart.getQuantity()));

        return listCart;
    }

    @Override
    public void updateQuantity(int newQuantity, long cartId) {
        cartDAO.updateQuantity(newQuantity, cartId);
    }

    @Override
    public void delete(long id) {
        cartDAO.delete(id);
    }

    @Override
    public int getTotalItemByUserId(long id) {
        return cartDAO.getTotalItemByUserId(id);
    }

}
