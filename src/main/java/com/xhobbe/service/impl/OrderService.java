package com.xhobbe.service.impl;

import com.xhobbe.dao.IOrderDAO;
import com.xhobbe.model.Order;
import com.xhobbe.service.IOrderService;
import com.xhobbe.utils.OrderUtils;
import java.util.ArrayList;
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
        
        order = orderDAO.findOne(id);
        
        return order != null ? order : null;
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
    public int getTotalItem() {
        return orderDAO.getTotalItem();
    }

    @Override
    public int getTotalItemByUserIdAndStatus(long id, int statusId) {

        return orderDAO.getTotalItemByUserIdAndStatus(id, statusId);
    }

    @Override
    public int getTotalItemByStatus(int statusId) {
        return orderDAO.getTotalItemByStatus(statusId);
    }

    @Override
    public void updateStatus(long orderId, int statusId) {
        orderDAO.updateStatus(orderId, statusId);

    }

    @Override
    public String findByStatusAndUserId(long userId, String status) {
        List<Order> listOrder = orderDAO.findByStatusAndUserId(userId, status);
        if (listOrder.isEmpty()) {
            return "";
        }

        List<String> results = new ArrayList<>();

        for (Order order : listOrder) {
            results.add(OrderUtils.getOrderElementWeb(order));
        }

        return !results.isEmpty() ? String.join("", results) : "";

    }

    @Override
    public String findByStatus(String status) {
        List<Order> listOrder = orderDAO.findByStatus(status);
        if (listOrder.isEmpty()) {
            return "";
        }

        List<String> results = new ArrayList<>();

        for (Order order : listOrder) {
            results.add(OrderUtils.getOrderElement(order));
        }

        return !results.isEmpty() ? String.join("", results) : "";
    }

    @Override
    public Order findOne(long id) {

        Order order = orderDAO.findOne(id);

        return order;
    }
}
