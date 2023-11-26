package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Cart;
import com.xhobbe.model.User;
import com.xhobbe.service.ICartService;
import com.xhobbe.service.IOrderService;
import com.xhobbe.utils.SessionUtils;

import java.io.IOException;
import java.util.List;
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
    private static final String CART_LIST_URL = "./cart";
    @Inject
    ICartService cartService;
    
    @Inject
    IOrderService orderService;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            listCart(request, response);
            return;
        }

        switch (action) {
            case ActionConstant.ADD_TO_CART:
                getDetailProductCart(request, response);
                break;
            case ActionConstant.DELETE:
                deleteCart(request, response);
                break;
            case ActionConstant.EDIT:
                break;
            default:
                response.sendRedirect(CART_LIST_URL);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void listCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        
        if (user != null) {
            List<Cart> cartList = cartService.findByUserId(user.getUserId());
            request.setAttribute(AppConstant.LIST, cartList);
            request.setAttribute("totalCart", cartService.getTotalItemByUserId(user.getUserId()));
            request.setAttribute("totalOrder", orderService.getTotalItemByUserId(1));
            request.getRequestDispatcher("/views/web/cart.jsp").forward(request, response);
        } else {
            response.sendRedirect("./");
        }
    }
    
    private void getDetailProductCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    private void deleteCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
