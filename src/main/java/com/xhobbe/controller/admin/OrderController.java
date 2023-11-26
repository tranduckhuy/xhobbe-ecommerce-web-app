package com.xhobbe.controller.admin;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Order;
import com.xhobbe.model.OrderDetail;
import com.xhobbe.service.IOrderService;
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

    @Inject
    IOrderService orderService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");

        request.setAttribute(AppConstant.TOTAL, orderService.getTotalItemByStatus(1));
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
            case ActionConstant.CHANGESTATUS:
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

        Order order = orderService.findOne(orderId);

        if (order == null) {
            response.sendRedirect("./order?action=list");
            return;

        }
        List<OrderDetail> orderDetail = order.getListOrderDetail();
        request.setAttribute(AppConstant.LIST, orderDetail);
        request.getRequestDispatcher("/views/admin/orderDetailList.jsp").forward(request, response);

    }

    private void getSearchOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("/views/admin/orderList.jsp").forward(request, response);
    }

    private void deleteOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void changeStatusOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = UtilsValidType.getLong(request.getParameter("id"));

        if (id == -1) {
            response.sendRedirect("./order?action=list");
            return;
        }
        
        Order order = orderService.findOne(id);
        if (AppConstant.PENDING.equals(order.getStatus())) {
            orderService.updateStatus(id, 2);
        } else if (AppConstant.SHIPPED.equals(order.getStatus())) {
            orderService.updateStatus(id, 3);
        } 
        
        response.sendRedirect("./admin-order");
    }

}
