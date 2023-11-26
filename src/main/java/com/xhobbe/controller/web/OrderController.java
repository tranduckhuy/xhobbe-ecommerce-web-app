package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Order;
import com.xhobbe.model.OrderDetail;
import com.xhobbe.model.User;
import com.xhobbe.service.ICartService;
import com.xhobbe.service.IOrderService;
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
@WebServlet(name = "order", urlPatterns = {"/order"})
public class OrderController extends HttpServlet {

    private static final String ORDER_LIST_URL = "./order";

    @Inject
    ICartService cartService;

    @Inject
    IOrderService orderService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        
        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        if (user != null) {
            request.setAttribute("totalCart", cartService.getTotalItemByUserId(user.getUserId()));
            request.setAttribute("totalOrder", orderService.getTotalItemByStatus(1));
        }
        if (action == null) {
            request.getRequestDispatcher("views/web/order.jsp").forward(request, response);
            return;
        }

        switch (action) {
            case ActionConstant.LIST:
                listOrder(request, response);
                break;
            case ActionConstant.DETAIL:
                getDetailOrder(request, response);
                break;
            case ActionConstant.SEARCH:
                getSearchOrder(request, response);
                break;
            case ActionConstant.EDIT:
                listOrder(request, response);
                break;
            default:
                response.sendRedirect(ORDER_LIST_URL);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void listOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String status = request.getParameter("status");
        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        if (status == null || status.isEmpty() || user == null) {
            response.sendRedirect(ORDER_LIST_URL);
            return;
        }

        String htmlContent = orderService.findByStatusAndUserId(user.getUserId(), status);

        response.getWriter().write(htmlContent);
    }

    private void getDetailOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
        List<OrderDetail> orderDetail = order.getListOrderDetail();
        request.setAttribute(AppConstant.LIST, orderDetail);
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/orderDetail.jsp").forward(request, response);
    }

    private void getSearchOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/order.jsp").forward(request, response);
    }
}
