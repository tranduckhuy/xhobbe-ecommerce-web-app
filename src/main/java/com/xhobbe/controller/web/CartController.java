package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.model.Cart;
import com.xhobbe.model.Product;
import com.xhobbe.service.ICartService;
import com.xhobbe.service.IProductService;
import com.xhobbe.utils.UtilsValidType;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "cart", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Inject
    private ICartService cartService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("./");
            return;
        }

        switch (action) {
            case ActionConstant.ADD:
                addToCart(request, response);
                break;
            default:
                response.sendRedirect("./");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("./");
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long productId = UtilsValidType.getLong(request.getParameter("product_id"));
        int quantity = UtilsValidType.getInteger(request.getParameter("quantity"));

        if (productId == -1) {
            response.sendRedirect("./");
            return;
        }

        Product product = productService.findOne(productId);

        if (product == null) {
            response.sendRedirect("./");
            return;
        }

        Cart cartItem = new Cart();
        cartItem.setProductId(productId);
        cartItem.setQuantity(quantity);

        cartService.add(cartItem);

        response.sendRedirect("./cart?action=view");
    }

}
