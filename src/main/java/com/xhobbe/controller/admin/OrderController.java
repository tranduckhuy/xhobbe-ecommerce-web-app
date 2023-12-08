package com.xhobbe.controller.admin;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Order;
import com.xhobbe.model.OrderDetail;
import com.xhobbe.model.User;
import com.xhobbe.service.IOrderDetailService;
import com.xhobbe.service.IOrderService;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.SendEmailUtils;
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
@WebServlet(name = "admin-order", urlPatterns = {"/admin-order"})
public class OrderController extends HttpServlet {

    private static final String ORDER_LIST_URL = "./admin-order";

    @Inject
    IOrderService orderService;

    @Inject
    IUserService userService;

    @Inject
    IOrderDetailService orderDetailService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        User userSession = (User) SessionUtils.getInstance().getValue(request, "user");
        User actutalUserStatus = userService.findOne(userSession.getEmail());

        if (actutalUserStatus == null || actutalUserStatus.getRoleId() != 1 && actutalUserStatus.getRoleId() != 2) {
            SessionUtils.getInstance().removeValue(request, "user");
            response.sendRedirect("./");
            return;
        }

        String action = request.getParameter("action");

        request.setAttribute(AppConstant.NEW_ORDER, orderService.getTotalItemByStatus(AppConstant.PENDING_SHIPPED_STATUS_ID));
        if (action == null) {
            request.getRequestDispatcher("/views/admin/orderList.jsp").forward(request, response);
            return;
        }

        switch (action) {
            case ActionConstant.LIST:
                listOrder(request, response);
                break;
            case ActionConstant.DETAIL:
                getOrderDetail(request, response);
                break;
            case ActionConstant.SEARCH:
                getSearchOrder(request, response);
                break;
            case ActionConstant.DELETE:
                deleteOrder(request, response);
                break;
            case ActionConstant.CHANGE_STATUS:
                changeStatusOrder(request, response);
                break;
            default:
                response.sendRedirect("./admin");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);

    }

    private void listOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String status = request.getParameter("status");

        String htmlContent = orderService.findByStatus(status);

        response.getWriter().write(htmlContent);

    }

    private void getOrderDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        long orderId = UtilsValidType.getLong(request.getParameter("id"));

        if (orderId == -1) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }

        List<OrderDetail> orderDetail = orderDetailService.findByOrderId(orderId);

        if (orderDetail == null || orderDetail.isEmpty()) {
            response.sendRedirect(ORDER_LIST_URL);
            return;

        }
        request.setAttribute(AppConstant.LIST, orderDetail);
        request.getRequestDispatcher("/views/admin/orderDetailList.jsp").forward(request, response);

    }

    private void getSearchOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String searchValue = request.getParameter("search");

        if (searchValue == null || searchValue.isEmpty()) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }

        String htmlContent = orderService.findByEmailOrPhone(searchValue.trim());

        response.getWriter().write(htmlContent);

    }

    private void deleteOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long id = UtilsValidType.getLong(request.getParameter("id"));

        if (id == -1) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }
        Order order = orderService.findOne(id);
        if (order == null) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }

        SendEmailUtils.orderRefusalMessage(order.getCustomerEmail(), "Your order was not accepted!!");
        orderService.delete(id);
        response.sendRedirect(ORDER_LIST_URL);
    }

    private void changeStatusOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = UtilsValidType.getLong(request.getParameter("id"));

        if (id == -1) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }

        Order order = orderService.findOne(id);
        List<OrderDetail> listDetail;
        if (AppConstant.PENDING.equals(order.getStatus())) {
            List<String> productNames = orderService.updateStatus(id, 2);
            if (!productNames.isEmpty()) {
                request.setAttribute("productError", productNames);
            } else {
                listDetail = orderDetailService.findByOrderId(order.getOrderId());
                SendEmailUtils.sendOrderMessage(order.getCustomerEmail(), "Thank you for your purchase!", order, listDetail);
            }
        } else if (AppConstant.SHIPPED.equals(order.getStatus())) {
            orderService.updateStatus(id, 3);
            listDetail = orderDetailService.findByOrderId(order.getOrderId());
            SendEmailUtils.successOrderMessage(order.getCustomerEmail(), "Your order has been successfully delivered!", order, listDetail);
        }
        response.sendRedirect(ORDER_LIST_URL);
    }

}
