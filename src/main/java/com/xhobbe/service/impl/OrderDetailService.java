package com.xhobbe.service.impl;

import com.xhobbe.dao.ICartDAO;
import com.xhobbe.dao.IOrderDetailDAO;
import com.xhobbe.model.Cart;
import com.xhobbe.model.OrderDetail;
import com.xhobbe.service.IOrderDetailService;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author ADMIN
 */
public class OrderDetailService implements IOrderDetailService {

    @Inject
    ICartDAO cartDAO;

    @Inject
    IOrderDetailDAO orderDetailDAO;

    @Override
    public List<OrderDetail> findByOrderId(long id) {

        List<OrderDetail> listOrderDetail = orderDetailDAO.findByOrderId(id);

        listOrderDetail.forEach(od -> od.setTotal(od.getQuantity() * od.getPriceOrder()));

        return listOrderDetail;
    }

    @Override
    public Long add(long[] cartId, long orderId) {
        
        Cart cart;
        
        for (int i = 0; i < cartId.length; i++) {
            long cId = cartId[i];
            cart = cartDAO.findOne(cId);
            if (cart == null) {
                continue;
            }
            orderDetailDAO.add(orderId, cart);
            cartDAO.delete(cId);
        }
        
        return orderId;
    }

    @Override
    public void delete(long orderId) {
        orderDetailDAO.delete(orderId);
    }
}
