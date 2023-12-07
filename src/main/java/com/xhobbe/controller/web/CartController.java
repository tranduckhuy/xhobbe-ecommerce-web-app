package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Cart;
import com.xhobbe.model.Product;
import com.xhobbe.model.User;
import com.xhobbe.service.ICartService;
import com.xhobbe.service.IOrderService;
import com.xhobbe.service.IProductService;
import com.xhobbe.utils.CartUtils;
import com.xhobbe.utils.SessionUtils;
import com.xhobbe.utils.UtilsValidType;

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

    @Inject
    IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action").trim();

        if (action == null) {
            listCart(request, response);
            return;
        }

        if (ActionConstant.DELETE.equals(action)) {
            deleteCart(request, response);
        } else {
            response.sendRedirect(CART_LIST_URL);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action").trim();

        if (action == null) {
            listCart(request, response);
            return;
        }

        switch (action) {
            case ActionConstant.ADD:
                addToCart(request, response);
                break;
            case ActionConstant.EDIT:
                updateCart(request, response);
                break;
            default:
                response.sendRedirect(CART_LIST_URL);
        }
    }

    private void listCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        User user = (User) SessionUtils.getInstance().getValue(request, "user");

        if (user != null) {
            List<Cart> cartList = cartService.findByUserId(user.getUserId());
            request.setAttribute(AppConstant.LIST, cartList);
            request.setAttribute("totalCart", cartList.size());
            request.setAttribute("totalOrder", orderService.getTotalItemByUserIdAndStatus(
                    user.getUserId(), AppConstant.PENDING_SHIPPED_STATUS_ID));
            request.getRequestDispatcher("/views/web/cart.jsp").forward(request, response);
        } else {
            response.sendRedirect("./");
        }
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        long productId = UtilsValidType.getLong(request.getParameter("id"));
        int quantity = UtilsValidType.getInteger(request.getParameter("quantity"));

        if (user == null || productId == -1 || quantity == -1) {
            response.sendRedirect("./");
            return;
        }

        Product product = productService.findOne(productId);

        if (product == null) {
            response.sendRedirect("./");
            return;
        }
        cartService.add(CartUtils.getCart(user.getUserId(), productId, quantity));

        response.sendRedirect("./cart");
    }

    private void deleteCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        long id = UtilsValidType.getLong(request.getParameter("id"));

        if (id == -1) {
            response.sendRedirect(CART_LIST_URL);
            return;
        }
        cartService.delete(id);
        response.sendRedirect(CART_LIST_URL);
    }

    private void updateCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        long cartId = UtilsValidType.getLong(request.getParameter("cartId"));
        int newQuantity = UtilsValidType.getInteger(request.getParameter("newQuantity"));

        if (cartId == -1 || newQuantity == -1) {
            response.sendRedirect("./home");
            return;
        }

        cartService.updateQuantity(newQuantity, cartId);
        response.sendRedirect("./cart");
    }

}
