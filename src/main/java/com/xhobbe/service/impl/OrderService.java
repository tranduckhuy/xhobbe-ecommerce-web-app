package com.xhobbe.service.impl;

import com.xhobbe.dao.IOrderDAO;
import com.xhobbe.model.Order;
import com.xhobbe.service.IOrderService;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author ADMIN
 */
public class OrderService implements IOrderService {

    @Inject
    IOrderDAO orderDAO;

    @Override
    public Order add(Order order) {

        Long id = orderDAO.add(order);

        return id != null ? order : null;
    }

    @Override
    public void delete(long id) {
        orderDAO.delete(id);
    }

    @Override
    public List<Order> findAll(int limit, int offset, String orderBy, String sortBy) {

        return orderDAO.findAll(limit, offset, orderBy, sortBy);

    }

    @Override
    public List<Order> findByStatusIdAndUserId(long userId, int statusId) {

        return orderDAO.findByStatusAndUserId(userId, statusId);
    }

    @Override
    public int getTotalItem() {
        
        return orderDAO.getTotalItem();
    }

    @Override
    public void updateStatus(long orderId, int statusId) {
        orderDAO.updateStatus(orderId, statusId);

    }

}
