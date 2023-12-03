package com.xhobbe.service.impl;

import com.xhobbe.dao.ICartDAO;
import com.xhobbe.dao.IOrderDAO;
import com.xhobbe.dao.IOrderDetailDAO;
import com.xhobbe.dao.IProductDAO;
import com.xhobbe.model.Cart;
import com.xhobbe.model.OrderDetail;
import com.xhobbe.model.Product;
import com.xhobbe.service.IOrderDetailService;
import java.util.ArrayList;
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
    
    @Inject
    IOrderDAO orderDAO;
    
    @Inject
    IProductDAO productDAO;

    @Override
    public List<OrderDetail> findByOrderId(long id) {

        List<OrderDetail> listOrderDetail = orderDetailDAO.findByOrderId(id);

        listOrderDetail.forEach(od -> od.setTotal(od.getQuantity() * od.getPriceOrder()));

        return listOrderDetail;
    }

    @Override
    public List<String> add(long[] cartId, long orderId) {
        
        Cart cart;
        
        List<String> errorProduct = new ArrayList<>();
        
        for (int i = 0; i < cartId.length; i++) {
            long cId = cartId[i];
            cart = cartDAO.findOne(cId);
            if (cart == null) {
                continue;
            }
            Product product = productDAO.findOne(cart.getProductId());
            System.out.println(product);
            int quantity = product.getStockQuantity() - cart.getQuantity();
            if (quantity < 0 && product.getStockQuantity() > 0) {
                cart.setQuantity(product.getStockQuantity());
                product.setStockQuantity(0);
            } else if (product.getStockQuantity() <= 0) {
                errorProduct.add(product.getName());
                if (errorProduct.size() == cartId.length) {
                    orderDetailDAO.delete(orderId);
                    orderDAO.delete(orderId);
                    break;
                }
                continue;
            } else {
                product.setStockQuantity(quantity);
            }
            productDAO.update(product);
            orderDetailDAO.add(orderId, cart);
            
            cartDAO.delete(cId);
        }
        
        return errorProduct;
    }

    @Override
    public void delete(long orderId) {
        orderDetailDAO.delete(orderId);
    }
}
