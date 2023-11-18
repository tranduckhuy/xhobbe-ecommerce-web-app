package com.xhobbe.dao;

import com.xhobbe.dao.impl.OrderDAO;


/**
 *
 * @author ADMIN
 */
public class Test {

    public static void main(String[] args) {
        OrderDAO orderDAO = new OrderDAO();
//        
//        Order order = new Order();
//        order.setUserId(4);
//        order.setAddress("Ha noi");
//        order.setTotal(10000);
//        order.setStatusID(2);
//        
//
//        OrderDetail orderDetail = new OrderDetail();
//        orderDetail.setProductId(3);
//        orderDetail.setQuantity(3);
//        orderDetail.setPriceOrder(9999);
//        
//        List<OrderDetail> list = new ArrayList<>();
//        list.add(orderDetail);
//        
//        order.setListOrderDetail(list);
//        
//        orderDAO.add(order);

//        List<Order> list = orderDAO.findByUserId(4);
//        
//        for (Order order : list) {
//            System.out.println(order);
//        }

        System.out.println(orderDAO.getTotalItem());
    }
}
