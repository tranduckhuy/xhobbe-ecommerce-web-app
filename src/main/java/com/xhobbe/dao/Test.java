package com.xhobbe.dao;

import com.xhobbe.dao.impl.OrderDAO;
import com.xhobbe.dao.impl.ProductDAO;
import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.model.Product;
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
//        List<Order> order = orderDAO.findByStatusAndUserId(3, AppConstant.ALL_STATUS);
//        
//        System.out.println(order);
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
        FindRequest findRequest = new FindRequest();
        findRequest.setLimit(8);
        findRequest.setOffset(0);
        findRequest.setCategory("Phone");
        findRequest.setBrand("Apple");

        ProductDAO dao = new ProductDAO();
        List<Product> products = dao.findByCategory(findRequest);
        for (Product p : products) {
            System.out.println(p.getName());
        }
    }
}
