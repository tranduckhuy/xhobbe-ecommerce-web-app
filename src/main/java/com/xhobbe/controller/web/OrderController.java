package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Order;
import com.xhobbe.model.User;
import com.xhobbe.service.IOrderDetailService;
import com.xhobbe.service.IOrderService;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.CartUtils;
import com.xhobbe.utils.OrderUtils;
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
@WebServlet(name = "order", urlPatterns = {"/order"})
public class OrderController extends HttpServlet {

    private static final String ORDER_LIST_URL = "./order";

    @Inject
    IOrderDetailService orderDetailService;

    @Inject
    IOrderService orderService;

    @Inject
    IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");

        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        if (user != null) {
            request.setAttribute("totalOrder", orderService.getTotalItemByUserIdAndStatus(
                    user.getUserId(), AppConstant.PENDING_SHIPPED_STATUS_ID));
        }
        if (action == null) {
            request.getRequestDispatcher("views/web/order.jsp").forward(request, response);
            return;
        }

        switch (action) {
            case ActionConstant.LIST:
                listOrder(request, response);
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

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        switch (action) {
            case ActionConstant.ADD:
                addOrder(request, response);
                break;
            default:
                response.sendRedirect(ORDER_LIST_URL);
        }

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

    private void getSearchOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/order.jsp").forward(request, response);
    }

    private void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cartIdsString = request.getParameter("cartIds");
        long[] cartIds = CartUtils.getListCartIds(cartIdsString.split(","));
        Order order = OrderUtils.getParamAndCreateOrder(request);

        if (cartIds.length == 0 || order == null) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.sendRedirect("./cart?message=fail");
            return;
        }

        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        if (user.getPhone() == null || user.getPhone().isEmpty() || user.getAddress() == null || user.getAddress().isEmpty()) {
            user.setAddress(order.getAddress());
            user.setPhone(order.getCustomerPhone());
            userService.update(user);
        }
        order.setUserId(user.getUserId());
        order = orderService.add(order);
        if (order != null) {
            List<String> errorProduct = orderDetailService.add(cartIds, order.getOrderId());
            request.setAttribute("errorProduct", errorProduct);
//            SessionUtils.getInstance().putValue(request, "errorProduct", errorProduct);
            request.getRequestDispatcher("views/web/order.jsp").forward(request, response);
//            response.sendRedirect("./order");
        } else {
            response.sendRedirect("./cart?message=fail");
        }

    }
}
