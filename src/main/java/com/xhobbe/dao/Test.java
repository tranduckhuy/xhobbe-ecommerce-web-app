package com.xhobbe.dao;

import com.xhobbe.dao.impl.CartDAO;
import com.xhobbe.dao.impl.OrderDAO;
import com.xhobbe.model.Cart;
import com.xhobbe.model.Order;
import com.xhobbe.model.OrderDetail;
import java.util.List;


/**
 *
 * @author ADMIN
 */
public class Test {

    public static void main(String[] args) {
        OrderDAO orderDAO = new OrderDAO();   
        
//        Order order = new Order();
//        order.setUserId(4);
//        order.setAddress("Ha noi");
//        order.setTotal(10000);
//        order.setStatusID(2);       

        orderDAO.updateStatus(2, 2);
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

//        CartDAO cartDAO = new CartDAO();
//
////        List<Cart> list = cartDAO.findAll(4, 0, "cartId", "DESC");
//        List<Cart> list = cartDAO.findByUserId(4);
//        
//        for (Cart c : list) {
//            System.out.println(c);
//        }
//
//
//        Cart cart = new Cart();
//        cart.setUserId(3);
//        cart.setProductId(1);
//        cart.setQuantity(1000);
//        cartDAO.delete(6);

            
    }
}