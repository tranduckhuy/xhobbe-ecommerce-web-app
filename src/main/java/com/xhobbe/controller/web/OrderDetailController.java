package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.OrderDetail;
import com.xhobbe.service.IOrderDetailService;
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
@WebServlet(name = "order-detail", urlPatterns = {"/order-detail"})
public class OrderDetailController extends HttpServlet {

    private static final String ORDER_LIST_URL = "./order";

    @Inject
    IOrderDetailService orderDetailService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action").trim();

        if (action == null) {
            request.getRequestDispatcher("views/web/order.jsp").forward(request, response);
            return;
        }

        if (ActionConstant.DETAIL.equals(action)) {
            getDetailOrder(request, response);
            return;
        }
        response.sendRedirect(ORDER_LIST_URL);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect(ORDER_LIST_URL);

    }

    private void getDetailOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long orderId = UtilsValidType.getLong(request.getParameter("id"));

        if (orderId == -1) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }

        List<OrderDetail> orderDetail = orderDetailService.findByOrderId(orderId);

        if (orderDetail.isEmpty()) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }

        request.setAttribute(AppConstant.LIST, orderDetail);
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/orderDetail.jsp").forward(request, response);
    }
}
