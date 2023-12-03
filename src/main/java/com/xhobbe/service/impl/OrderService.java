package com.xhobbe.service.impl;

import com.xhobbe.dao.IOrderDAO;
import com.xhobbe.dao.IOrderDetailDAO;
import com.xhobbe.dao.IProductDAO;
import com.xhobbe.model.Order;
import com.xhobbe.model.OrderDetail;
import com.xhobbe.model.Product;
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
    
    @Inject
    IOrderDetailDAO orderDetailDAO;
    
    @Inject
    IProductDAO productDAO;
    
    @Override
    public Order add(Order order) {
        
        Long id = orderDAO.add(order);
        
        order = orderDAO.findOne(id);
        
        return order != null ? order : null;
    }

    @Override
    public void delete(long id) {
        List<OrderDetail> list = orderDetailDAO.findByOrderId(id);
        
        for (OrderDetail o : list) {
            Product product = productDAO.findOne(o.getProductId());
            product.setStockQuantity(product.getStockQuantity() + o.getQuantity());
            productDAO.update(product);
        }
        orderDetailDAO.delete(id);
        
        orderDAO.delete(id);
    }

    @Override
    public String findByEmailOrPhone(String searchValue) {
        List<Order> listOrder = orderDAO.findByEmailOrPhone(searchValue);
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
    public int getTotalItemByDays(int days) {
        return orderDAO.getTotalItemByDays(days);
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
    public List<String> updateStatus(long orderId, int statusId) {
        
        // check product have quantity < 0;
        List<String> productNames = new ArrayList<>();
        
        List<OrderDetail> list = orderDetailDAO.findByOrderId(orderId);
        
        Order order = orderDAO.findOne(orderId);
        
        for (OrderDetail od : list) {
            Product product = productDAO.findOne(od.getProductId());
            
            int quantity = product.getStockQuantity() - od.getQuantity();
            if (quantity < 0) {
                productNames.add("<p style='font-weight: 800'>" + product.getName() + " - Customer: " + order.getCustomerName() + " - Phone: " 
                        + order.getCustomerPhone() + " - Time " + order.getOrderDate() + "</p>");
                product.setStockQuantity(0);
            }
            
        }
        orderDAO.updateStatus(orderId, statusId);
        return productNames;
    }
    
    @Override
    public List<Double> getTotalIncomeByMonth(int month) {
        
        List<Double> incomes = new ArrayList();
        if (month != 0) {
            incomes.add(orderDAO.getTotalIncomeByMonth(month));
        } else {
            for (int i = 0; i < 12; i++) {
                incomes.add(orderDAO.getTotalIncomeByMonth(i + 1));
            }
        }
        return incomes;
    }
    
    @Override
    public int getTotalItemCurrentMonth() {
        return orderDAO.getTotalItemCurrentMonth();
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
